class AddFabricaIdToMercadoria < ActiveRecord::Migration
  def change
    add_column :mercadoria, :fabrica_id, :integer
  end
end
