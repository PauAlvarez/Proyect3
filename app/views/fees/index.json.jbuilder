json.array!(@fees) do |fee|
  json.extract! fee, :id, :user_id, :cantidadDinero, :tiempo
  json.url fee_url(fee, format: :json)
end
