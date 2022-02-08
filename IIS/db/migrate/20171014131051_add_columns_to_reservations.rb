class AddColumnsToReservations < ActiveRecord::Migration[5.1]
  def change
    add_column :reservations, :customer, :string
    add_column :reservations, :date, :datetime
  end
end
