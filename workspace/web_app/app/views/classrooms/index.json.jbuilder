json.array!(@classrooms) do |classroom|
  json.extract! classroom, :id, :grade, :tid, :room, :classlvl, :classProgress, :nextLvl, :schoolName
  json.url classroom_url(classroom, format: :json)
end
