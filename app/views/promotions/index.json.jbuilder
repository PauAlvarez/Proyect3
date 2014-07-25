json.array!(@promotions) do |promotion|
  json.extract! promotion, :id, :medioComunicacion, :descripcionPromo, :acuerdo, :client_id, :user_id, :fecha
  json.url promotion_url(promotion, format: :json)
end
