class CreateInsurers < ActiveRecord::Migration[5.1]
  def change
    create_table :insurers do |t|

      t.timestamps
    end
  end
end
