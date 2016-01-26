class UsersController < ApplicationController

  before_action :authenticate_user!

  # def index
  #   @users = User.order('created_at DESC').paginate(page: params[:page], per_page: 30)
  # end

  def show
  end


  private
  def user_params
    params.require(:user).permit(:user_img, :name, :username, :user_location, :email, :phone)
  end
  
end