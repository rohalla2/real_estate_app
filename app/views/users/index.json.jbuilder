json.array!(@users) do |user|
  json.extract! user, :first_name, :last_name, :password, :password_confirmation, :email, :address, :city, :state, :zip_code, :picture_url, :user_type, :phone_number, :website
  json.url user_url(user, format: :json)
end