json.extract! bill, :id, :name, :address, :phone
json.created_at bill.created_at.to_i
json.deliver_at bill.deliver_at.to_i
json.restaurant do
  json.partial! 'restaurants/restaurants', restaurant: bill.restaurant
end
json.menus JSON.parse(bill.menus)
