class ChangeBillMenusToDocument < ActiveRecord::Migration[5.2]
  def change
    drop_table :bill_menus
    add_column :bills, :menus, :text
  end
end
