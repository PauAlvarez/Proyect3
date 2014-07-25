class CreateSaleDetails < ActiveRecord::Migration
  def change
    create_table :sale_details do |t|
      t.integer :sale_id
      t.integer :book_id
      t.float :preciouni
      t.integer :cantidad
      t.float :importe
      t.float :descuento

      t.timestamps
    end
  end
end
