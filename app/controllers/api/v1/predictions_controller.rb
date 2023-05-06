class Api::V1::PredictionsController < ApplicationController
  def create
    user = User.find(params[:id])
    user.predictions.create!(gamePk: params[:gamePk], expected_winner: params[:gamePk])
    render json: UserSerializer.new(user)
  end
end
