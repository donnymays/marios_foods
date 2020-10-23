class UsersController < ApplicationController
  # def create
  #   @user = User.new(user_params)
  #   if @user.save
  #     redirect_to products_path
  #   else
  #     redirect_to root_path
  #   end
  # end

  private
    def user_params
      params.require(:user).permit(:email, :password, :admin)
    end
  
end