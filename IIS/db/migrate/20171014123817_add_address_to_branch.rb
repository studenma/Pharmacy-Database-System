class AddAddressToBranch < ActiveRecord::Migration[5.1]
  def change
    add_column :branches, :Address, :string
  end
end
