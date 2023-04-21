class Api::V1::HockeyGamesController < ApplicationController
  def index
    # kewl code here
    render json: HockeyGameSerializer.new(HockeyGameFacade.new.todays_games)
  end
end
