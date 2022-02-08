class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :supplier, foreign_key: true
      t.datetime :dateOrdered
      t.boolean :pending

      t.timestamps
    end
  end
end
