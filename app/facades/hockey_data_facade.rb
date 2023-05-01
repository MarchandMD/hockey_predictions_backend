class HockeyDataFacade
  def todays_games
    todays_games = service.todays_games[:dates][0][:games]
    todays_games.map do |game_hash|
      HockeyGame.new(game_hash)
    end
  end

  def single_game_stats(gamePk)
    single_game_stats = service.single_game_stats(gamePk)

    data_hash = {
      gamePk: single_game_stats[:gamePk],
      status: single_game_stats[:gameData][:status],
      teams: {
        away: { score: 0, team: { name: single_game_stats[:gameData][:teams][:away][:name], id: single_game_stats[:gameData][:teams][:away][:id] } },
        home: { score: 0, team: { name: single_game_stats[:gameData][:teams][:home][:name], id: single_game_stats[:gameData][:teams][:home][:id] } }
      }
    }

    HockeyGame.new(data_hash)
  end

  def service
    HockeyDataService.new
  end
end
