class ChangeDatetimeToDateInOrders < ActiveRecord::Migration[5.1]
  def change
    change_column :orders, :dateOrdered, :date
  end
end
