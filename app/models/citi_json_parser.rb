class CitiJSONParser

  CITI_JSON = URI.parse('http://citibikenyc.com/stations/json')

  CURRENT_TIME = Time.at((Time.now.to_f / 5.minutes).round * 5.minutes)

  def self.parse
    new.call
  end


  def current_station_time(seconds = 5.minutes)
    Time.at((Time.now.to_f / seconds).round * seconds)
  end


  def build_row(number, bikes, free, station_time)
    begin
    cmd = "INSERT INTO station_#{number} (bikes, free, station_time) VALUES (#{bikes},#{free},'#{station_time}')"
    ActiveRecord::Base.connection.execute(cmd)
    rescue
    end
  end

  def call
    begin
      json = CITI_JSON.read
      hash = JSON.parse(json)
      array = hash["stationBeanList"]
      array.each do |station|
        bikes =  station["availableBikes"]
        free = station["availableDocks"] 
        station_time = CURRENT_TIME.to_s[0..18].gsub(' ','T')
        number = station["id"]
        build_row(number, bikes, free, station_time)
      end
    rescue
    end
  end

end
