class AddBranchToOrder < ActiveRecord::Migration[5.1]
  def change
    add_reference :orders, :branch, foreign_key: true
  end
end
