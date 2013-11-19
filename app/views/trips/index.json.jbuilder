json.array!(@trips) do |trip|
  json.extract! trip, :origin_id, :destination_id
  json.url trip_url(trip, format: :json)
end
