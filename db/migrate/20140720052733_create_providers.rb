class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :nombreEmpresa
      t.string :telefonoEmpresa
      t.string :direccionEmpresa
      t.string :nombreContacto
      t.string :correoElectronico

      t.timestamps
    end
  end
end
