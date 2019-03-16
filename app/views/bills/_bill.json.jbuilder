json.extract! bill, :id, :name, :address, :phone, :created_at, :deliver_at
json.restaurant do
  json.partial! 'restaurants/restaurant', restaurant: bill.restaurant
end
json.menus do
  json.array! bill.menus, partial: 'menus/menu', as: :menu
end
