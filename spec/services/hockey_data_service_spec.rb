require 'rails_helper'

describe 'hockey_data_service' do
  describe '#todays_games' do
    it 'returns a list of games for today' do

      todays_games = HockeyDataService.new.todays_games

require 'pry'; binding.pry
      expect(todays_games).to be_a Hash
    end
  end
end
