class CreateTelefones < ActiveRecord::Migration[6.0]
  def change
    create_table :telefones do |t|
      t.references :pessoa, null: false, foreign_key: true
      t.string :ddd
      t.string :numero
      t.integer :tipo_telefone
      t.boolean :preferencial

      t.timestamps
    end
  end
end
