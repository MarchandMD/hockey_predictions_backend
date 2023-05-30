FactoryBot.define do
  factory :hockey_game do
    gamePk { Faker::Number.number(digits: 9) }
    abstractGameState { 'Final' }
    codedGameState { 7 }
    detailedState { 'finished' }
    statusCode { 7 }
    home_score { 1 }
    away_score { 0 }
    home { 'home team' }
    away { 'away team' }
    home_id { 13 }
    away_id {  1 }
    datetime { DateTime.now }

    initialize_with { new(attributes) }
  end
end
