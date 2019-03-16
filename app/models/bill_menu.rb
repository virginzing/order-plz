class BillMenu < ApplicationRecord
  belongs_to :menu
  belongs_to :bill
end
