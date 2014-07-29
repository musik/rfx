json.array!(@brands) do |brand|
  json.extract! brand, :id, :name, :slug, :priority, :items_count
  json.url brand_url(brand, format: :json)
end
