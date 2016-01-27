class UsersController < ApplicationController

  before_action :authenticate_user!
  
  def show
  end


  private
  def user_params
    params.require(:user).permit(:user_img, :name, :username, :user_location, :email, :phone)
  end
  
end