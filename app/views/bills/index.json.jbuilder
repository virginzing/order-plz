json.bills do
  json.array! @bills, partial: 'bills/bills', as: :bill
end
