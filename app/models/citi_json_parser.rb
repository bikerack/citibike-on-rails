class CitiJSONParser

  def initialize
    @time = Time.now
  end

  CITI_JSON = URI.parse('http://citibikenyc.com/stations/json')

  def self.parse
    begin
      json = CITI_JSON.read
      hash = JSON.parse(json)
      array = hash["stationBeanList"]
      array.each do |station|
        bikes =  station["availableBikes"]
        free = station["availableDocks"] 
        station_time = current_station_time
        number = station["id"]
        build_row(number, bikes, free, station_time)
      end
    rescue
    end
  end

  def build_row(number, bikes, free, station_time)
    begin
    cmd = "INSERT INTO station_#{number} (bikes, free, station_time) VALUES (#{bikes},#{free},TIMESTAMP \'#{station_time}\')"
    ActiveRecord::Base.connection.execute(cmd)
    rescue
    end
  end

  def current_station_time(seconds = 5.minutes)
    Time.at((@time.to_f / seconds).round * seconds)
  end


end
