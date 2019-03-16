json.menus do
  json.array! @menus, partial: 'menus/menu', as: :menu
end
