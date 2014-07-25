class CreateFees < ActiveRecord::Migration
  def change
    create_table :fees do |t|
      t.integer :user_id
      t.integer :cantidadDinero
      t.date :tiempo

      t.timestamps
    end
  end
end
