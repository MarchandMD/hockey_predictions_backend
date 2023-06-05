class Api::V1::HockeyGamesController < ApplicationController
  def index
    render json: HockeyGameSerializer.new(HockeyDataFacade.new.todays_games(date: params[:date]))
  end

  def show
    render json: HockeyGameSerializer.new(HockeyDataFacade.new.single_game_stats(params['gamePk']))
  end
end
