json.array!(@webs) do |web|
  json.extract! web, :user_id, :title, :description, :private
  json.url web_url(web, format: :json)
end
