class CreateOrderDetails < ActiveRecord::Migration
  def change
    create_table :order_details do |t|
      t.integer :book_id
      t.integer :order_id
      t.integer :cantidad
      t.float :descuento
      t.float :preciouni
      t.float :cantidadtotal
      t.float :importe

      t.timestamps
    end
  end
end
