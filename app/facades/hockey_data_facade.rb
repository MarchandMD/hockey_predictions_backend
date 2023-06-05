class HockeyDataFacade
  def actual_winner(gamePk:)
    response = service.linescore(gamePk: gamePk)
    home = response[:teams][:home]
    away = response[:teams][:away]
    return unless response[:currentPeriodTimeRemaining] == 'Final'

    home[:goals] > away[:goals] ? home[:team][:name] : away[:team][:name]
  end

  def update_prediction_status(prediction)
    response = service.update_prediction_status(prediction)
    Prediction.update(prediction.id, status: response[:currentPeriodTimeRemaining])
  end

  def single_game_primary_key(date: Date.today.to_json)
    service.todays_games(date: date)[:dates][0][:games].sample[:gamePk]
  end

  def todays_games(date: Date.today.to_json)
    todays_games = service.todays_games(date: date)

    return [] if todays_games.nil?

    todays_games = todays_games[:dates][0][:games]
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
      },
      datetime: single_game_stats[:gameData][:datetime][:dateTime]
    }

    HockeyGame.new(data_hash)
  end

  def service
    HockeyDataService.new
  end
end
