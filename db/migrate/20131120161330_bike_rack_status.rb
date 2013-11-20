class BikeRackStatus < ActiveRecord::Migration
 
  
  def up
    Station.import
    Station.all.each do |station|
      create_table "station_#{station.station_id}" do |t|
        t.integer :bikes
        t.integer :free
        t.datetime :station_time
      end
    end
  end
end


  # { "id"=>72, 
  #   "stationName"=>"W 52 St & 11 Ave", 
  #   "availableDocks"=>30, 
  #   "totalDocks"=>39, 
  #   "latitude"=>40.76727216, 
  #   "longitude"=>-73.99392888, 
  #   "statusValue"=>"In Service", 
  #   "statusKey"=>1, 
  #   "availableBikes"=>8, 
  #   "stAddress1"=>"W 52 St & 11 Ave", 
  #   "stAddress2"=>"", 
  #   "city"=>"", 
  #   "postalCode"=>"", 
  #   "location"=>"", 
  #   "altitude"=>"", 
  #   "testStation"=>false, 
  #   "lastCommunicationTime"=>nil, 
  #   "landMark"=>""} 