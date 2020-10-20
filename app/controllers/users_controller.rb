class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update]

  def edit

  end

  def update

    @user.update(user_params)
    if @user.save
      redirect_to profile_path(@user)
    else
      render :edit
    end

  end

  private

  def set_user
    @user = User.find(params[:id])
  end
  def user_params
    params.require(:user).permit(:name, :phone_number, :address, :presentation)
  end
end
