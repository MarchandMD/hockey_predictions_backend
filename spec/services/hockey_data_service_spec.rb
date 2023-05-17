require 'rails_helper'

describe 'hockey_data_service' do
  describe '#todays_games' do
    it 'returns a list of games for today' do
      todays_games = HockeyDataService.new.todays_games
      expect(todays_games).to be_a Hash
      expect(todays_games).to have_key :dates
      expect(todays_games[:dates]).to be_an Array
      expect(todays_games[:dates].count).to eq(1)
      expect(todays_games[:dates][0]).to have_key :games
      expect(todays_games[:dates][0][:games]).to be_an Array

      todays_games[:dates][0][:games].each do |game_hash|
        expect(game_hash).to be_a Hash
        expect(game_hash).to have_key :gamePk
        expect(game_hash).to have_key :status
        expect(game_hash[:status]).to be_a Hash
        expect(game_hash[:status]).to have_key :abstractGameState
        expect(game_hash[:status]).to have_key :codedGameState
        expect(game_hash[:status]).to have_key :detailedState
        expect(game_hash[:status]).to have_key :statusCode
        expect(game_hash).to have_key :teams
        expect(game_hash[:teams]).to be_a Hash
        expect(game_hash[:teams]).to have_key :away
        expect(game_hash[:teams]).to have_key :home
        expect(game_hash[:teams][:away]).to have_key :score
        expect(game_hash[:teams][:home]).to have_key :score
        expect(game_hash[:teams][:home][:team]).to have_key :id
        expect(game_hash[:teams][:away][:team]).to have_key :id
        expect(game_hash).to have_key :gameDate
      end
    end
  end

  describe '#single_game_stats' do
    it 'returns all the game data' do
     gamePk = 2022030184

     single_game_stats = HockeyDataService.new.single_game_stats(gamePk)
     expect(single_game_stats).to be_a Hash
     expect(single_game_stats).to have_key :gameData
     expect(single_game_stats[:gameData]).to be_a Hash
     expect(single_game_stats[:gameData]).to have_key :status
     expect(single_game_stats[:gameData]).to have_key :teams
     expect(single_game_stats[:gameData][:teams]).to be_a Hash
     expect(single_game_stats[:gameData][:teams]).to have_key :away
     expect(single_game_stats[:gameData][:teams]).to have_key :home
     expect(single_game_stats[:gameData][:teams][:away]).to have_key :id
     expect(single_game_stats[:gameData][:teams][:away]).to have_key :name
     expect(single_game_stats[:gameData][:teams][:home]).to have_key :id
     expect(single_game_stats[:gameData][:teams][:home]).to have_key :name
     expect(single_game_stats[:gameData]).to have_key :datetime
     expect(single_game_stats[:gameData][:datetime]).to be_a Hash
     expect(single_game_stats[:gameData][:datetime]).to have_key :dateTime
     expect(single_game_stats[:gameData][:datetime][:dateTime]).to be_a String
    end
  end
end
