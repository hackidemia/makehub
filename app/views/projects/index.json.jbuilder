json.array!(@projects) do |project|
  json.extract! project, :id, :name, :duration, :license, :price, :skills, :user_id
  json.url project_url(project, format: :json)
end
