class RenameAddresstoaddress < ActiveRecord::Migration[5.1]
  def change
    rename_column :branches, :Address, :address 
  end
end
