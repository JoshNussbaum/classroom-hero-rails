json.array!(@leagues) do |league|
  json.extract! league, :id, :leagueName, :hasStamps, :leagueAdmin, :private
  json.url league_url(league, format: :json)
end
