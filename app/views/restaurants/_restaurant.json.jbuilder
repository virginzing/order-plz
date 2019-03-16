json.extract! restaurant, :id, :name, :image_url, :kind
json.menus do
  json.array! restaurant.menus, partial: 'menus/menu', as: :menu
end
