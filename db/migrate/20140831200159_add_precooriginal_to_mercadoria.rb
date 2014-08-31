class AddPrecooriginalToMercadoria < ActiveRecord::Migration
  def change
    add_column :mercadoria, :precooriginal, :integer
  end
end
