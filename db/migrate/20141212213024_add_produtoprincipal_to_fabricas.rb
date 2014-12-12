class AddProdutoprincipalToFabricas < ActiveRecord::Migration
  def change
    add_column :fabricas, :produtoprincipal, :string
  end
end
