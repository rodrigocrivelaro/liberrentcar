class CreateHabilitacaos < ActiveRecord::Migration[6.0]
  def change
    create_table :habilitacaos do |t|
      t.references :pessoa, null: false, foreign_key: true
      t.numeric :numero
      t.string :modalidade
      t.date :validade

      t.timestamps
    end
  end
end
