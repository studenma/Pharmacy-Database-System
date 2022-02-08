class AddColumnsToDrugs < ActiveRecord::Migration[5.1]
  def change
    add_column :drugs, :name, :string
    add_column :drugs, :price, :integer
    add_column :drugs, :prescription, :integer
  end
end
