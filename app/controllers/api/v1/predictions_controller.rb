class Api::V1::PredictionsController < ApplicationController
  def index
    user = User.find(params[:id])
    render json: UserSerializer.new(user)
  end

  def create
    user = User.find(params[:id])
    user.predictions.create!(gamePk: params[:gamePk], expected_winner: params[:expected_winner])
    render json: UserSerializer.new(user)
  end

  def update
    prediction = Prediction.update(params[:id], expected_winner: params[:expected_winner])
    render json: UserSerializer.new(User.find(params[:user_id]))
  end

  def destroy
    Prediction.destroy(params[:id])
    render json: "Deleted Successfully"
  end
end
