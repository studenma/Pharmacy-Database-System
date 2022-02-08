class CreateReservationDrugs < ActiveRecord::Migration[5.1]
  def change
    create_table :reservation_drugs do |t|
      t.integer :reservation_id, foreign_key: true
      t.integer :drug_id, foreign_key: true
      t.timestamps
    end
    add_index :reservation_drugs, [:reservation_id, :drug_id]
  end
end
