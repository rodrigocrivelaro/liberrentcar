class CreatePessoas < ActiveRecord::Migration[6.0]
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.string :documento
      t.date :dt_nascimento
      t.string :email

      t.timestamps
    end
  end
end
