class CreateOrderDrug < ActiveRecord::Migration[5.1]
  def change
    create_table :order_drugs do |t|
      t.belongs_to :order, foreign_key: true
      t.belongs_to :drug, foreign_key: true
    end
  end
end
