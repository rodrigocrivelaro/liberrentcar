class CreateAutomovels < ActiveRecord::Migration[6.0]
  def change
    create_table :automovels do |t|
      t.string :modelo
      t.string :cor
      t.references :tipo_auto, null: false, foreign_key: true
      t.string :placa
      t.decimal :custo_diario

      t.timestamps
    end
  end
end
