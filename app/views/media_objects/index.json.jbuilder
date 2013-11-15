json.array!(@media_objects) do |media_object|
  json.extract! media_object, :name, :step_id
  json.url media_object_url(media_object, format: :json)
end
