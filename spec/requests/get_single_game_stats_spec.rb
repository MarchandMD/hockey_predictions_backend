RSpec.describe 'get single game stats' do
  context "happy path" do
    it 'returns json of single game stats', :vcr do
      get "/api/v1/single_game_stats?gamePk=2022030144"

      expect(response).to be_successful

      parsed_response = JSON.parse(response.body, symbolize_names: true)

      expect(parsed_response).to be_a Hash
      expect(parsed_response).to have_key :data

      expect(parsed_response[:data]).to be_a Hash

      expect(parsed_response[:data]).to have_key :type
      expect(parsed_response[:data][:type]).to eq('hockey_game')
      expect(parsed_response[:data]).to have_key :attributes
      expect(parsed_response[:data][:attributes]).to have_key :gamePk
      expect(parsed_response[:data][:attributes]).to have_key :abstractGameState
      expect(parsed_response[:data][:attributes]).to have_key :codedGameState
      expect(parsed_response[:data][:attributes]).to have_key :detailedState
      expect(parsed_response[:data][:attributes]).to have_key :statusCode
      expect(parsed_response[:data][:attributes]).to have_key :home
      expect(parsed_response[:data][:attributes]).to have_key :away
      expect(parsed_response[:data][:attributes]).to have_key :home_score
      expect(parsed_response[:data][:attributes]).to have_key :away_score
      expect(parsed_response[:data][:attributes]).to have_key :home_id
      expect(parsed_response[:data][:attributes]).to have_key :away_id
    end
  end
end
