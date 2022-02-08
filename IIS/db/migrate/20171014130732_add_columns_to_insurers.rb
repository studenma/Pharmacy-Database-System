class AddColumnsToInsurers < ActiveRecord::Migration[5.1]
  def change
    add_column :insurers, :name, :string
    add_column :insurers, :code, :integer
    add_column :insurers, :orgid, :integer
  end
end
