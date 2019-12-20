class CreateTipoTelefones < ActiveRecord::Migration[6.0]
  def change
    create_table :tipo_telefones do |t|
      t.string :nome

      t.timestamps
    end
  end
end
