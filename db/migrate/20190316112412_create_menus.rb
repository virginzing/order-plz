class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.references :restaurant, foreign_key: true
      t.string :name
      t.string :image_url
      t.decimal :price
      t.integer :deliver_time

      t.timestamps
    end
  end
end
