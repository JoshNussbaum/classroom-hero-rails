json.array!(@items) do |item|
  json.extract! item, :id, :cost, :name, :storeType, :uid
  json.url item_url(item, format: :json)
end
