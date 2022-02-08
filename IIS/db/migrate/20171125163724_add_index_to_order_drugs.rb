class AddIndexToOrderDrugs < ActiveRecord::Migration[5.1]
  def change
    add_index :order_drugs, [:order_id, :drug_id]
  end
end
