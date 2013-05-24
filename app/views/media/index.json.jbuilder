json.array!(@media) do |medium|
  json.extract! medium, :url, :step_id
  json.url medium_url(medium, format: :json)
end