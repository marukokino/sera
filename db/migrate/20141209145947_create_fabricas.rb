class CreateFabricas < ActiveRecord::Migration
  def change
    create_table :fabricas do |t|
      t.string :name

      t.timestamps
    end
  end
end
