class AddRcToSales < ActiveRecord::Migration[5.1]
  def change
    add_column :sales, :rc, :string, default: ''
  end
end
