class Book < ActiveRecord::Base
		validates :titulo,  :presence => { message: "Este dato es indispensable" }
		validates :autor,  :presence => { message: "Este dato es indispensable" }
		validates :cantidad, numericality: {only_integer: true, message:"Caracteres entre 0 y 9" }
		validates :precio, presence:true, numericality: {only_float: true, message:"Es necesario agregar el precio"}
end
