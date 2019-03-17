json.bills do
  json.array! @bills, partial: 'bills/bill', as: :bill
end
