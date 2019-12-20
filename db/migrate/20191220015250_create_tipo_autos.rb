class CreateTipoAutos < ActiveRecord::Migration[6.0]
  def change
    create_table :tipo_autos do |t|
      t.string :nome

      t.timestamps
    end
  end
end
