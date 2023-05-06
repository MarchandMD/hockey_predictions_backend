class HockeyDataService
  def todays_games
    get_url("/api/v1/schedule?date=#{Date.today.as_json}")
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
