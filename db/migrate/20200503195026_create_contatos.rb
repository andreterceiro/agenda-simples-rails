class CreateContatos < ActiveRecord::Migration
  def change
    create_table :contatos do |t|
      t.string :nome, limit:50
      t.integer :idade
      t.string :telefone, limit: 17
      t.string :email, limit: 100
      t.text :observacoes

      t.timestamps null: false
    end
  end
end
