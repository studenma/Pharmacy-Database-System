class CreateContributions < ActiveRecord::Migration[5.1]
  def change
    create_table :contributions do |t|
      t.integer :insurer_id, foreign_key: true
      t.integer :drug_id, foreign_key: true
      t.integer :amount

      t.timestamps
    end
    add_index :contributions, [:insurer_id, :drug_id]
  end
end
