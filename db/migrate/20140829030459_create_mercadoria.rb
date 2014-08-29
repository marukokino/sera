class CreateMercadoria < ActiveRecord::Migration
  def change
    create_table :mercadoria do |t|
      t.string :nome
      t.text :descricao
      t.integer :preco
      t.integer :precoumcbm
      t.integer :precomeiodevinte
      t.integer :altura
      t.integer :largura
      t.integer :comprimento
      t.integer :precofrete
      t.integer :imposto
      t.integer :precodevenda
      t.integer :precodaconco
      t.integer :vendamensal
      t.integer :outroscustosdevenda

      t.timestamps
    end
  end
end
