class CreateBillMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :bill_menus do |t|
      t.references :menu, foreign_key: true
      t.references :bill, foreign_key: true

      t.timestamps
    end
  end
end
