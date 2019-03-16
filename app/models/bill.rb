class Bill < ApplicationRecord
  belongs_to :restaurant
  has_many :bill_menus
  has_many :menus, through: :bill_menus, source: :menu

  after_commit :update_deliver_at

  private

  def update_deliver_at
    self.deliver_at = DateTime.now + menus.map(&:deliver_time).max.minutes
  end
end
