json.array!(@teacher_users) do |teacher_user|
  json.extract! teacher_user, :id, :coins, :leagueId, :hasStamps
  json.url teacher_user_url(teacher_user, format: :json)
end
