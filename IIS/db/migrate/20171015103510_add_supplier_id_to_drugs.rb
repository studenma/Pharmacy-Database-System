class AddSupplierIdToDrugs < ActiveRecord::Migration[5.1]
  def change
    add_column :drugs, :supplier_id, :integer, foreign_key: true
  end
end
