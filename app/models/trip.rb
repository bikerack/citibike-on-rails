class Trip < ActiveRecord::Base
  belongs_to :origin
  belongs_to :destination


  CITI_JSON = URI.parse('http://citibikenyc.com/stations/json')

  def start_time(seconds = 5.minutes)
    @time = self.origin.created_at
    Time.at((@time.to_f / seconds).round * seconds)
  end

  def origin_stations
    Station.near([self.origin.latitude, self.origin.longitude], 100).limit(5)
  end

  def destination_stations
    Station.near([self.destination.latitude, self.destination.longitude], 100).limit(5)
  end


  def origin_bike_status
    json = CITI_JSON.read
    hash = JSON.parse(json)
    array = hash["stationBeanList"]
    bikes =[]
   
    origin_stations.collect do |station|
      array.each do |live_station|
        if live_station["id"] == station.station_id #) & (live_station["availableBikes"]!=nil)
          bikes << live_station["availableBikes"]
        end
      end 
    end
    bikes
  end

  def destination_rack_status
    json = CITI_JSON.read
    hash = JSON.parse(json)
    array = hash["stationBeanList"]
    racks =[]
   
    destination_stations.collect do |station|
      array.each do |live_station|
        if live_station["id"] == station.station_id 
          racks << live_station["availableDocks"]
        end
      end 
    end
    racks
  end

  def rollback(roll_days, roll_minutes)
       start_time - roll_days.days + roll_minutes.minutes
  end


  def multi_rollback(weeks, bump, min)
    n=0
    string=""
    days = 7
    while n < weeks
      if n != weeks-1
        cmd="\'#{rollback(bump + days, min).to_s[0..-7].gsub(' ','T').concat('+00:00')}\',"
        string << cmd
        n+=1
        days+=7
      else
        cmd="\'#{rollback(bump + days, min).to_s[0..-7].gsub(' ','T').concat('+00:00')}\'"
        string << cmd
        n+=1
      end
    end
    string
  end

  def origin_history(min)
    origin_stations.collect do |station| 
      # cmd= "SELECT * FROM station_#{station.station_id} WHERE station_time IN (\'#{rollback(70, min).to_s[0..18]}\', \'#{rollback(77, min).to_s[0..18]}\')"
      # connection.execute(cmd).field_values("bikes").join
      cmd = "SELECT AVG(bikes) FROM station_#{station.station_id} WHERE station_time IN (#{multi_rollback(12, 63, min)})"
      # connection.execute(cmd).field_values("avg").join.to_i
      hash = connection.execute(cmd)[0]
      hash["AVG(bikes)"].to_i
    end
  end

  def destination_history(min)
    destination_stations.collect do |station| 
      # cmd= "SELECT * FROM station_#{station.station_id} WHERE station_time = \'#{rollback(70,min).to_s[0..18]}\'"
      # connection.execute(cmd).field_values("free").join
      cmd = "SELECT AVG(free) FROM station_#{station.station_id} WHERE station_time IN (#{multi_rollback(12, 63, min)})"
      # connection.execute(cmd).field_values("avg").join.to_i
      hash = connection.execute(cmd)[0]
      hash["AVG(free)"].to_i
    end
  end 

end



