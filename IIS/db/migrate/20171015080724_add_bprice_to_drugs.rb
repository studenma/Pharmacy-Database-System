class AddBpriceToDrugs < ActiveRecord::Migration[5.1]
  def change
    add_column :drugs, :bprice, :integer
  end
end
