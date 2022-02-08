class AddIndexToDrugs < ActiveRecord::Migration[5.1]
  def change
    add_index :drugs, :supplier_id
  end
end
