class Client < ActiveRecord::Base

	validates :nombreClient,  :presence => { message: "No puede dejarse en blanco" }
	validates :email,  format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, message: "El formato no es correcto", on: :create }
	validates :telefonoClient, length: { in:7..12, message:"Debe contener entre 7 y 12 caracteres"}
	validates :telefonoClient, numericality: {only_integer: true, message:"Caracteres entre 0 y 9" }	
end
