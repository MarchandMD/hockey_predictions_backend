require 'rails_helper'

RSpec.describe 'get todays games' do
  context "happy path" do
    it 'returns json data of todays games' do
      get "/api/v1/todays_games"

      expect(response).to be_successful

      parsed_response = JSON.parse(response.body, symbolize_names: true)

      expect(parsed_response).to be_a Hash
      expect(parsed_response).to have_key :data

      expect(parsed_response[:data]).to be_an Array


      parsed_response[:data].each do |game|
        expect(game).to be_a Hash
        expect(game).to have_key :id
        expect(game).to have_key :type
        expect(game[:type]).to eq('hockey_game')
        expect(game).to have_key :attributes
        expect(game[:attributes]).to have_key :gamePk
        expect(game[:attributes]).to have_key :abstractGameState
        expect(game[:attributes]).to have_key :codedGameState
        expect(game[:attributes]).to have_key :detailedState
        expect(game[:attributes]).to have_key :statusCode
        expect(game[:attributes]).to have_key :home_score
        expect(game[:attributes]).to have_key :away_score
        expect(game[:attributes]).to have_key :home
        expect(game[:attributes]).to have_key :away
        expect(game[:attributes]).to have_key :winner
      end
    end
  end

end