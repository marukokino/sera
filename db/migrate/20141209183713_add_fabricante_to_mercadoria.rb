class AddFabricanteToMercadoria < ActiveRecord::Migration
  def change
    add_column :mercadoria, :fabricante, :string
  end
end
