class Api::V1::UsersController < ApplicationController
  def index
    render json: UserSerializer.new(User.all)
  end

  def create
    user = User.find_or_create_by(first_name: user_params['first_name'], last_name: user_params['last_name']) do |u|
      u.email = user_params['email']
      u.image = user_params['image']
    end

    if user.valid?
      render json: UserSerializer.new(user)
    else
      render json: { failure: 'not good' }, status: 418
    end
  end

  def show
    user = User.find(params[:id])
    user.calculate_total_points
    render json: UserSerializer.new(User.find(params[:id]))
  end

  def update
    user = User.find(params[:id])
    user.predictions.each do |prediction|
      if prediction.created_at < DateTime.now
        HockeyDataFacade.new.update_prediction_status(prediction)
      end
    end
    render json: UserSerializer.new(user)
  end

  private

  def user_params
    params.require(:user).permit(:uid, :provider, :first_name, :last_name, :email, :password, :image)
  end
end
