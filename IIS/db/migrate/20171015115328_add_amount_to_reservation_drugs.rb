class AddAmountToReservationDrugs < ActiveRecord::Migration[5.1]
  def change
    add_column :reservation_drugs, :amount, :integer, :default => 1
  end
end
