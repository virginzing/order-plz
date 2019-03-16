class Bill < ApplicationRecord
  belongs_to :restaurant
  has_many :bill_menus
  has_many :menus, through: :bill_menus, source: :menu
end
