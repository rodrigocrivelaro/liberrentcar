class CreateLocacaos < ActiveRecord::Migration[6.0]
  def change
    create_table :locacaos do |t|
      t.references :pessoa, null: false, foreign_key: true
      t.references :automovel, null: false, foreign_key: true
      t.numeric :valor
      t.datetime :dt_inicio
      t.datetime :dt_termino
      t.datetime :dt_retirada
      t.datetime :dt_entrega

      t.timestamps
    end
  end
end
