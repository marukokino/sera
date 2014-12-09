class AddImageToMercadoria < ActiveRecord::Migration
  def change
    add_column :mercadoria, :image, :string
  end
end
