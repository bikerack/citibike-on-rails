##README


####Data Structure:
stations
  address
  lat
  long

trips
  origin_id
  destination_id

origins
  address
  lat
  long
  station_id

destinations
  address
  lat
  long
  station_id

date_lookup
  history

stations_status
  station_id
  avail_docks
  total_docks
  avail_bikes


####Sample data:
  
  from http://citibikenyc.com/stations/json
  { "id"=>72, 
    "stationName"=>"W 52 St & 11 Ave", 
    "availableDocks"=>30, 
    "totalDocks"=>39, 
    "latitude"=>40.76727216, 
    "longitude"=>-73.99392888, 
    "statusValue"=>"In Service", 
    "statusKey"=>1, 
    "availableBikes"=>8, 
    "stAddress1"=>"W 52 St & 11 Ave", 
    "stAddress2"=>"", 
    "city"=>"", 
    "postalCode"=>"", 
    "location"=>"", 
    "altitude"=>"", 
    "testStation"=>false, 
    "lastCommunicationTime"=>nil, 
    "landMark"=>""} 

  from http://api.citybik.es/citibikenyc.json
  { "name"=>"W 52 St & 11 Ave",
    "idx"=>0,
    "timestamp"=>"2013-11-19T02:34:27.903015",
    "number"=>72,
    "free"=>33,
    "bikes"=>5,
    "coordinates"=>"",
    "address"=>"W 52 St & 11 Ave",
    "lat"=>40767272,
    "lng"=>-73993928,
    "id"=>0}



####Application Workflow:

Trip index page/form
  insert current location
  insert destination
  insert trip length in minutes (15,30,45)

Post request to users_controller
  pass current to geocoder for google
  pass destination to geocoder for google 

Show page
  nearest station to their location
  estimate of available bike at current location
  nearesr station to their destination
  estimate of available slot at destination


#####Source code 

google maps for rails

