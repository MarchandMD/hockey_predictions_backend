class Api::V1::HockeyGamesController < ApplicationController
  def index
    if params[:date].nil?
      render json: HockeyGameSerializer.new(HockeyDataFacade.new.todays_games(date: '2023-06-03'))
    else
      render json: HockeyGameSerializer.new(HockeyDataFacade.new.todays_games(date: params[:date]))
    end
  end

  def show
    render json: HockeyGameSerializer.new(HockeyDataFacade.new.single_game_stats(params['gamePk']))
  end

end
