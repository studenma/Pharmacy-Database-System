class AddBranchToReservations < ActiveRecord::Migration[5.1]
  def change
    add_reference :reservations, :branch, foreign_key: true
  end
end
