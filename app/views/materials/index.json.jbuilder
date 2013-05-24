json.array!(@materials) do |material|
  json.extract! material, :name, :url, :photo_url
  json.url material_url(material, format: :json)
end