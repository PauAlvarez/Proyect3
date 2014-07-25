json.array!(@orders) do |order|
  json.extract! order, :id, :numeropedido, :fechapedido, :fechaprogramada, :fechaentregada, :estatus, :user_id, :client_id
  json.url order_url(order, format: :json)
end
