class Bill < ApplicationRecord
  belongs_to :restaurant

  before_save :update_deliver_at

  private

  def update_deliver_at
    self.deliver_at = DateTime.now + JSON.parse(self.menus).map { |menu| menu["deliver_time"] }.max.minutes
  end
end
