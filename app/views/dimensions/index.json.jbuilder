json.array!(@dimensions) do |dimension|
  json.extract! dimension, :id, :length
  json.url dimension_url(dimension, format: :json)
end
