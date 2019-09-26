class CreateReceitas < ActiveRecord::Migration[5.2]
  def change
    create_table :receitas do |t|
      t.string :nome
      t.string :descricao
      t.string :valor

      t.timestamps
    end
  end
end
