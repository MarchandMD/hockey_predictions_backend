class Api::V1::UsersController < ApplicationController
  def create
    new_user = User.new(user_params)

    if new_user.save
      render json: UserSerializer.new(new_user)
    else
      render json: { failure: 'not good' }, status: 418
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
