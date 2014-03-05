json.array!(@applications) do |application|
  json.extract! application, :User_id, :Property_id, :price_offer, :conditions
  json.url application_url(application, format: :json)
end