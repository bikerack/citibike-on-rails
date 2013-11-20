class StationParser 
  attr_writer :files
  attr_reader :path

  @@db = SQLite3::Database.new('/Users/johnrichardson/Development/code/flatiron/ruby/citibike-on-rails/db/development.sqlite3')

  def self.parse
    new.call
  end
  
  def initialize(path = "/Users/johnrichardson/Development/data/feed_test")
    @path = path
  end

  # def build_row(date_string)
  #   DateLookup.new.tap do |d| 
  #     d.history = date_string
  #     d.save

  #       t.integer :availableBikes
  #       t.integer :availablefrees
  #       t.datetime :station_time
  #       t.string :statusValue
  #       t.timestamps

  #   end
  # end

  def build_row(number, bikes, free, station_time)
    cmd = "INSERT INTO station_#{number} VALUES (?,?,?)"
    @@db.execute(cmd,self.bikes,self.free,self.station_time)
  end

  def files
    @files ||= Dir.entries(path)[3..-1]
  end

  def call
    files.each do |file_name| 
      json = open(file_name)
      array = JSON.parse(json)
      array.each do |station|
        bikes =  station["bikes"]
        free = station["free"] 
        station_time = station["timestamp"]
        # statusValue = station["statusValue"]
        number = station["number"]
        build_row(number, bikes, free, station_time)
      end
    end
  end

end



    #       json = open('citibike.json')
    # json = json.read
    # hash = JSON.parse(json)
    # array=hash["stationBeanList"]
    # array.each do |station|
    #  instance = Station.new
    #  instance.address = station["stationName"]
    #  instance.latitude = station["latitude"]
    #  instance.longitude = station["longitude"]
    #  instance.station_id = station["id"]
    #  instance.save
    # end
