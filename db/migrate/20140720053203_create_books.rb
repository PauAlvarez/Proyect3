class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :isbn10
      t.string :isbn13
      t.string :titulo
      t.string :autor
      t.string :editorial
      t.string :categoria
      t.integer :cantidad
      t.float :precio

      t.timestamps
    end
  end
end
