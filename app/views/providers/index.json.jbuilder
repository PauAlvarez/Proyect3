json.array!(@providers) do |provider|
  json.extract! provider, :id, :nombreEmpresa, :telefonoEmpresa, :direccionEmpresa, :nombreContacto, :correoElectronico
  json.url provider_url(provider, format: :json)
end
