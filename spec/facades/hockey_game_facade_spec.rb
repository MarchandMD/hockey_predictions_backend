require 'rails_helper'

describe HockeyGameFacade do
  context '#todays_games' do
    it 'returns an Array of HockeyGame Objects' do
      todays_games = HockeyGameFacade.new.todays_games
      expect(todays_games).to be_an Array
      todays_games.all? do |game|
        expect(game).to be_a HockeyGame
      end
    end
  end
end