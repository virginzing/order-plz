class AddDeliverAtToBills < ActiveRecord::Migration[5.2]
  def change
    add_column :bills, :deliver_at, :datetime
  end
end
