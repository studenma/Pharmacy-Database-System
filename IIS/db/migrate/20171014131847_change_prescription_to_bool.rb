class ChangePrescriptionToBool < ActiveRecord::Migration[5.1]
  def change
    remove_column :drugs, :prescription
    add_column :drugs, :prescription, :boolean
  end
end
