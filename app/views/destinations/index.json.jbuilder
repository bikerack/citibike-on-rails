json.array!(@destinations) do |destination|
  json.extract! destination, :address, :latitude, :longitude, :station_id
  json.url destination_url(destination, format: :json)
end
