class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :numeropedido
      t.date :fechapedido
      t.date :fechaprogramada
      t.date :fechaentregada
      t.integer :estatus
      t.integer :user_id
      t.integer :client_id

      t.timestamps
    end
  end
end
