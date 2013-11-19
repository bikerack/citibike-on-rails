json.array!(@origins) do |origin|
  json.extract! origin, :address, :latitude, :longitude, :station_id
  json.url origin_url(origin, format: :json)
end
