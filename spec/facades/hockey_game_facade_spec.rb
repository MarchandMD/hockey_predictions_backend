require 'rails_helper'

describe HockeyDataFacade do
  context '#todays_games' do
    it 'returns an Array of HockeyGame Objects' do
      todays_games = HockeyDataFacade.new.todays_games
      expect(todays_games).to be_an Array
      todays_games.all? do |game|
        expect(game).to be_a HockeyGame
      end
    end
  end
  context "#single_game_data" do
    it 'Returns a single HockeyGame Object' do
      single_game_pk = 2022030144
      single_game_stats = HockeyDataFacade.new.single_game_stats(single_game_pk)
      expect(single_game_stats).to be_a HockeyGame
    end
  end
end
