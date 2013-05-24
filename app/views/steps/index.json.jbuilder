json.array!(@steps) do |step|
  json.extract! step, :name, :content, :project_id
  json.url step_url(step, format: :json)
end