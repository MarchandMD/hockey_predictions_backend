class HockeyGameSerializer
  include JSONAPI::Serializer

  set_id { nil }
  attributes :gamePk, :abstractGameState, :codedGameState, :detailedState, :statusCode, :home, :away, :home_score, :away_score, :winner
end
