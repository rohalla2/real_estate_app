json.array!(@messages) do |message|
  json.extract! message, :title, :message, :message_type, :User_id
  json.url message_url(message, format: :json)
end