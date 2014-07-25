class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :nombreClient
      t.string :direccioncliente
      t.string :telefonoClient
      t.string :email
      t.string :facebook
      t.string :linkenId
      t.string :twitter

      t.timestamps
    end
  end
end
