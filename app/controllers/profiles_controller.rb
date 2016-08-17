class ProfilesController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def community
    @user = current_user
    @nearby_users = User.near([current_user.latitude, current_user.longitude], 20)
    # users within 20 miles of current user
  end


end
