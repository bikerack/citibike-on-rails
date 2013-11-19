json.array!(@stations) do |station|
  json.extract! station, :address, :latitude, :longitude
  json.url station_url(station, format: :json)
end
