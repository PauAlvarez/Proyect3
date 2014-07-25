json.array!(@clients) do |client|
  json.extract! client, :id, :nombreClient, :direccioncliente, :telefonoClient, :email, :facebook, :linkenId, :twitter
  json.url client_url(client, format: :json)
end
