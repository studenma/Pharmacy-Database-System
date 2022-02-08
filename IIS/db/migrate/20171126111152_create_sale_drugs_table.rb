class CreateSaleDrugsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :sale_drugs do |t|
      t.references :sale, foreign_key: true
      t.references :drug, foreign_key: true
      t.integer :amount, default: 1
    end
    add_index :sale_drugs, [:sale_id, :drug_id]
  end
end
