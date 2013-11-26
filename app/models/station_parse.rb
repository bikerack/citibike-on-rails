class StationParse 
  attr_writer :files
  attr_reader :path

  # @@db = SQLite3::Database.new('/Users/johnrichardson/Development/code/flatiron/ruby/citibike-on-rails/db/development.sqlite3')

  def self.parse
    new.call
  end
  
  def initialize(path = "/Users/johnrichardson/Development/data/feed")
    @path = path
  end

  def build_row(number, bikes, free, station_time)
    # cmd1 = "select max(id) from station_#{number}"
    # id = @@db.execute(cmd1)
    # id = id.join.to_i+1
    begin
    cmd = "INSERT INTO station_#{number} (bikes, free, station_time) VALUES (?,?,?)"
    # @@db.execute(cmd,bikes,free,station_time)
    rescue
    end 
  end

  def files
    @files = Dir.entries(path)[3..-1]
  end

  def call
    files.each do |file_name| 
      begin
      json = File.read("/Users/johnrichardson/Development/data/feed/"+file_name)[0..-2]
      hash = JSON.parse(json)
      array = hash["stationBeanList"]
      array.each do |station|
        # raise station.inspect
        bikes =  station["availableBikes"]
        free = station["availableDocks"] 
        station_time = parse_filename(file_name)
        # statusValue = station["statusValue"]
        number = station["id"]
        build_row(number, bikes, free, station_time)
      end
      rescue
      end
    end
  end

  def parse_filename(file_name)
    DateTime.parse(file_name.gsub("citi_", "").gsub("_","")).to_s 
  #   file_name.gsub("citi_", "").gsub("_","")
  end

end

