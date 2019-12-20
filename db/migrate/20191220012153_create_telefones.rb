class CreateTelefones < ActiveRecord::Migration[6.0]
  def change
    create_table :telefones do |t|
      t.references :pessoa, null: false, foreign_key: true
      t.numeric :ddd
      t.string :numero
      t.references :tipo_telefone, null: false, foreign_key: true
      t.boolean :preferencial

      t.timestamps
    end
  end
end
