class RemoveSupplierFromOrders < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :supplier_id
  end
end
