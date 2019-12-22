class CreateAutomovels < ActiveRecord::Migration[6.0]
  def change
    create_table :automovels do |t|
      t.string :modelo
      t.string :cor
      t.integer :tipo_auto
      t.string :placa
      t.decimal :custo_diario, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
