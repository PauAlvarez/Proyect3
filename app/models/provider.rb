class Provider < ActiveRecord::Base

	validates :nombreEmpresa,  :presence => { message: "No puede dejarse en blanco" }
	validates :telefonoEmpresa, length: { in:7..12, message:"Debe contener entre 7 y 12 caracteres"}
	validates :telefonoEmpresa, numericality: {only_integer: true, message:"Caracteres entre 0 y 9" }	
end
