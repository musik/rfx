json.array!(@items) do |item|
  json.extract! item, :id, :title, :sn, :name, :price, :price_vip, :year, :spec, :made_by, :unit, :moq, :stock
  json.url item_url(item, format: :json)
end
