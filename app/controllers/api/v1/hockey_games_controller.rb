class Api::V1::HockeyGamesController < ApplicationController
  def index
    render json: HockeyGameSerializer.new(HockeyGameFacade.new.todays_games)
  end
end
