class CreateSales < ActiveRecord::Migration[5.1]
  def change
    create_table :sales do |t|
      t.references :branch, foreign_key: true
      t.references :insurer, foreign_key: true, optional: true
      t.timestamps
    end
  end
end
