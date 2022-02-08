class AddIndexToUsers < ActiveRecord::Migration[5.1]
  def change
    add_index :users, :branch_id
  end
end
