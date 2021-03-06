class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :profile]
  before_action :set_user, only: [:profile, :profile_edit, :profile_update]
  def home
  end
  def profile

  end
  def profile_edit

  end

  # def profile_update

  #   @user.update(user_params)
  #   if @user.save
  #     redirect_to profile_path(@user)
  #   else
  #     render :profile_edit
  #   end

  # end

  private

  def set_user
    @user = User.find(params[:id])
  end
  def user_params
    params.require(:user).permit(:name, :phone_number, :address, :presentation, :photo)
  end
end
