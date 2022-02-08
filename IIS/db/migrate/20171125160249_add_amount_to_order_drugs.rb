class AddAmountToOrderDrugs < ActiveRecord::Migration[5.1]
  def change
    add_column :order_drugs, :amount, :integer, :default => 1
  end
end
