json.array!(@order_details) do |order_detail|
  json.extract! order_detail, :id, :book_id, :order_id, :cantidad, :descuento, :preciouni, :cantidadtotal, :importe
  json.url order_detail_url(order_detail, format: :json)
end
