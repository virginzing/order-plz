class CreateBills < ActiveRecord::Migration[5.2]
  def change
    create_table :bills do |t|
      t.references :restaurant
      t.string :name
      t.text :address
      t.string :phone

      t.timestamps
    end
  end
end
