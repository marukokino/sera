class AddCidadeToFabricas < ActiveRecord::Migration
  def change
    add_column :fabricas, :cidade, :string
  end
end
