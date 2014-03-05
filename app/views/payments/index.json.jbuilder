json.array!(@payments) do |payment|
  json.extract! payment, :user_id, :property_id, :amount, :bank_routing_number, :bank_account_number, :account_type
  json.url payment_url(payment, format: :json)
end