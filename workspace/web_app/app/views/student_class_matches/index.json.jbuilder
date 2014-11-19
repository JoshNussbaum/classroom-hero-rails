json.array!(@student_class_matches) do |student_class_match|
  json.extract! student_class_match, :id, :sid, :cid
  json.url student_class_match_url(student_class_match, format: :json)
end
