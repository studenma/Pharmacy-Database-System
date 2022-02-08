class AddBranchRefToUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :branch_id
    add_reference :users, :branch, foreign_key: true
  end
end
