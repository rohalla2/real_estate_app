json.array!(@properties) do |property|
  json.extract! property, :name, :description, :beds, :baths, :square_feet, :price, :address, :city, :state, :zip_code, :has_laundry, :has_parking, :image_url
  json.url property_url(property, format: :json)
end