require 'rails_helper'

RSpec.describe 'get todays games' do
  context "happy path" do
    it 'returns json data of todays games' do
      get "/api/v1/todays_games"

      expect(response).to be_successful
      require 'pry'; binding.pry
    end
  end

end