describe HockeyDataFacade do
  context "#actual_winner" do
    it 'returns the name of the winning team', :vcr do
      winner = HockeyDataFacade.new.actual_winner(gamePk: 2022020309)
      expect(winner).to eq('Minnesota Wild')
    end
  end

  context '#todays_games' do
    describe 'happy path' do
      it 'returns an Array of HockeyGame Objects', :vcr do
        todays_games = HockeyDataFacade.new.todays_games(date: "2023-03-04")
        expect(todays_games).to be_an Array
        todays_games.all? do |game|
          expect(game).to be_a HockeyGame
        end
      end
    end
    describe 'sad path' do
      it 'returns an empty array', :vcr do
        todays_games = HockeyDataFacade.new.todays_games(date: "2023-06-06")
        expect(todays_games).to eq([])
      end
    end
  end

  context "#single_game_data" do
    it 'Returns a single HockeyGame Object', :vcr do
      single_game_pk = 2022030144
      single_game_stats = HockeyDataFacade.new.single_game_stats(single_game_pk)
      expect(single_game_stats).to be_a HockeyGame
    end
  end

  describe '#single_game_primary_key' do
    it 'returns a single primary key for a game', :vcr do
      todays_games = HockeyDataFacade.new.single_game_primary_key(date: "2023-03-04")
      expect(todays_games).to be_an Integer
    end
  end
end
