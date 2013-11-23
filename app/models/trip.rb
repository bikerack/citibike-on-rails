class Trip < ActiveRecord::Base
  belongs_to :origin
  belongs_to :destination
  
  @@db = ActiveRecord::Base.connection
  
  def start_time(seconds = 5.minutes)
    @time = self.origin.created_at
    Time.at((@time.to_f / seconds).round * seconds)
  end

  def origin_bike_status
    uri = URI.parse('http://citibikenyc.com/stations/json')
    json = uri.read
    hash = JSON.parse(json)
    array = hash["stationBeanList"]
    bikes =[]
   
    Station.near([self.origin.latitude, self.origin.longitude], 0.25).collect do |station|
      array.each do |live_station|
        if live_station["id"] == station.station_id #) & (live_station["availableBikes"]!=nil)
          bikes << live_station["availableBikes"]
        end
      end 
    end
    bikes
  end

  def destination_rack_status
    uri = URI.parse('http://citibikenyc.com/stations/json')
    json = uri.read
    hash = JSON.parse(json)
    array = hash["stationBeanList"]
    racks =[]
   
    Station.near([self.destination.latitude, self.destination.longitude], 0.25).collect do |station|
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

 def origin_history
    Station.near([self.origin.latitude, self.origin.longitude], 0.25).collect do |station| 
      cmd= "SELECT * FROM station_#{station.station_id} WHERE station_time = \'#{rollback(56, 15).to_s[0..-7].gsub(' ','T').concat('+00:00')}\'"
      # @@db.execute(cmd)
      # raise cmd.inspect
      @@db.execute(cmd)
    end
  end

  def destination_history
    Station.near([self.destination.latitude, self.destination.longitude], 0.25).collect do |station| 
      cmd= "SELECT * FROM station_#{station.station_id} WHERE station_time = \'#{rollback(56,30).to_s[0..-7].gsub(' ','T').concat('+00:00')}\'"
      # @@db.execute(cmd)
      #raise cmd.inspect
      @@db.execute(cmd)
    end
  end 

end



