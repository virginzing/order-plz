json.restaurants do
  json.array! @restaurants, partial: 'restaurants/restaurants', as: :restaurant
end
