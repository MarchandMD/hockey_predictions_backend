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
      end
    end
  end
end
