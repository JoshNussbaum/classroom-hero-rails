json.array!(@earned_points) do |earned_point|
  json.extract! earned_point, :id, :earnId, :category_code, :earnTime
  json.url earned_point_url(earned_point, format: :json)
end
