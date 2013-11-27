json.array!(@backlinks) do |backlink|
  json.extract! backlink, :project, :project_url, :backlink_url, :method, :published_at, :notes
  json.url backlink_url(backlink, format: :json)
end
