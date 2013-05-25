json.array!(@projects) do |project|
  json.extract! project, :id, :name, :description, :user_id
  json.url project_url(project, format: :json)
end
