class CreateAvailables < ActiveRecord::Migration[5.1]
  def change
    create_table :availables do |t|
      t.integer :branch_id, foreign_key: true
      t.integer :drug_id, foreign_key: true
      t.integer :amount
      t.timestamps
    end
    add_index :availables, [:branch_id, :drug_id]
  end
end
