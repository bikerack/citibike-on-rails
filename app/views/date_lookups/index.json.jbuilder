json.array!(@date_lookups) do |date_lookup|
  json.extract! date_lookup, :name
  json.url date_lookup_url(date_lookup, format: :json)
end
