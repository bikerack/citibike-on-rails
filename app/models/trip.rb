class Trip < ActiveRecord::Base
  belongs_to :origin
  belongs_to :destination

  @@db = SQLite3::Database.new('/Users/johnrichardson/Development/code/flatiron/ruby/citibike-on-rails/db/development.sqlite3')



  def start_time(seconds = 5.minutes)
    @time = self.origin.created_at
    Time.at((@time.to_f / seconds).round * seconds)
  end

  def minus_week
    self.ride_time - 2.months
  end

 def origin_history
    info=Station.near([self.origin.latitude, self.origin.longitude], 0.25).collect do |station| 
      cmd= "SELECT * FROM station_#{station.station_id} WHERE station_time = \'#{minus_week.to_s[0..-5].gsub(' ','T').concat('+00:00')}\'"
      # @@db.execute(cmd)
      #raise cmd.inspect
      @@db.execute(cmd)
    end
    return info

  end

  def destination_history
    info=Station.near([self.destination.latitude, self.destination.longitude], 0.25).collect do |station| 
      cmd= "SELECT * FROM station_#{station.station_id} WHERE station_time = \'#{minus_week.to_s[0..-5].gsub(' ','T').concat('+00:00')}\'"
      # @@db.execute(cmd)
      #raise cmd.inspect
      @@db.execute(cmd)
    end
    return info

  end 

  # [#<Station id: 93, 
  # address: "Broadway & Battery Pl", 
  # latitude: 40.70463334, 
  # longitude: -74.01361706, 
  # created_at: "2013-11-20 23:49:44", 
  # updated_at: "2013-11-20 23:49:44", 
  # station_id: 304>,

  # #<Station id: 206, 
  # address: "State St", 
  # latitude: 40.70251526, 
  # longitude: -74.01427023, 
  # created_at: "2013-11-20 23:49:44", 
  # updated_at: "2013-11-20 23:49:44", 
  # station_id: 427>, 

  # #<Station id: 59, 
  # address: "Broad St & Bridge St", 
  # latitude: 40.70365182, 
  # longitude: -74.01167797, 
  # created_at: "2013-11-20 23:49:44", 
  # updated_at: "2013-11-20 23:49:44", 
  # station_id: 260>, 

  # #<Station id: 308, 
  # address: "Water - Whitehall Plaza", 
  # latitude: 40.70255065, 
  # longitude: -74.0127234, 
  # created_at: "2013-11-20 23:49:45", 
  # updated_at: "2013-11-20 23:49:45", 
  # station_id: 534>, 

  # #<Station id: 323, 
  # address: "Little West St & 1 Pl", 
  # latitude: 40.70569254, 
  # longitude: -74.01677685, 
  # created_at: "2013-11-20 23:49:45", 
  # updated_at: "2013-11-20 23:49:45", 
  # station_id: 2008>, 

  # #<Station id: 58, 
  # address: "South St & Whitehall St", 
  # latitude: 40.70122128, 
  # longitude: -74.01234218, 
  # created_at: "2013-11-20 23:49:44", 
  # updated_at: "2013-11-20 23:49:44", 
  # station_id: 259>]

  # def destination_open
  #   destination_history.bikes
  # end


end



