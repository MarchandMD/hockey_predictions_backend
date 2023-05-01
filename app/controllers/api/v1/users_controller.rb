class Api::V1::UsersController < ApplicationController
  def create
    user = User.find_or_create_by(first_name: user_params['first_name'], last_name: user_params['last_name']) do |u|
      u.email = user_params['email']
    end

    if user.valid?
      render json: UserSerializer.new(user)
    else
      render json: { failure: 'not good' }, status: 418
    end
  end

  def show
    render json: UserSerializer.new(User.find(params[:id]))
  end

  private

  def user_params
    params.permit(:uid, :provider, :first_name, :last_name, :email, :password)
  end
end
