json.array!(@category_codes) do |category_code|
  json.extract! category_code, :id, :code, :category, :categoryType
  json.url category_code_url(category_code, format: :json)
end
