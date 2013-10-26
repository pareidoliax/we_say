json.array!(@pages) do |page|
  json.extract! page, :web_id, :title, :body
  json.url page_url(page, format: :json)
end
