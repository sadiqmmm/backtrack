json.array!(@projects) do |project|
  json.extract! project, :name, :status
  json.url project_url(project, format: :json)
end
