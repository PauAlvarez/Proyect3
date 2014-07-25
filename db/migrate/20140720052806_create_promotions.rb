class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.string :medioComunicacion
      t.string :descripcionPromo
      t.string :acuerdo
      t.integer :client_id
      t.integer :user_id
      t.date :fecha

      t.timestamps
    end
  end
end
