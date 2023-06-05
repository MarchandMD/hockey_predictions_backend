describe 'get a game feed' do
  context 'happy path' do
    it 'returns json of a live game data' do
      get "/api/v1/game/2022030144/feed/live"

      expect(response.status).to eq(204)
    end
  end
end
