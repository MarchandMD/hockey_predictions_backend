class HockeyDataService
  def update_prediction_status(prediction)
    get_url("https://statsapi.web.nhl.com/api/v1/game/#{prediction.gamePk}/linescore")
  end

  def todays_games(date: Date.today.as_json)
    get_url("/api/v1/schedule?date=#{date}")
  end

  def single_game_stats(gamePk)
    get_url("/api/v1/game/#{gamePk}/feed/live")
  end

  def get_url(url, params = nil)
    response = conn.get(url, params)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://statsapi.web.nhl.com") do |faraday|
      # kewl code here
    end
  end
end
