json.array!(@student_users) do |student_user|
  json.extract! student_user, :id, :totalcoins, :currentcoins, :lvl, :progress, :lvlUpAmount
  json.url student_user_url(student_user, format: :json)
end
