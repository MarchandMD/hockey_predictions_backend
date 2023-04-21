class HockeyGameFacade
  def todays_games
    todays_games = service.todays_games[:dates][0][:games]
    todays_games.map do |game_hash|
      HockeyGame.new(game_hash)
    end
  end

  def service
    HockeyDataService.new
  end
end
