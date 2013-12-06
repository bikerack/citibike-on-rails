class StationParser 
  attr_writer :files
  attr_reader :path
 
 
  def self.parse
    new.call
  end
   
  def initialize(path = "/Users/johnrichardson/Development/data/feed")
    @path = path
  end
 
  def build_row(number, bikes, free, station_time)
    begin
    cmd = "INSERT INTO station_#{number} (bikes, free, station_time) VALUES (#{bikes},#{free},TIMESTAMP \'#{station_time}\')"
    ActiveRecord::Base.connection.execute(cmd)
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
        bikes =  station["availableBikes"]
        free = station["availableDocks"] 
        station_time = parse_filename(file_name)[0..18]
        # statusValue = station["statusValue"]
        number = station["id"]
        build_row(number, bikes, free, station_time)
      end
      rescue
      end
    end
  end
 
  def parse_filename(file_name)
    Time.parse(file_name.gsub("citi_", "").gsub("_","")).to_s
  end
 
end