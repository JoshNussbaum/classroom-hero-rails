json.array!(@schools) do |school|
  json.extract! school, :id, :schoolName, :zip, :city, :state
  json.url school_url(school, format: :json)
end
