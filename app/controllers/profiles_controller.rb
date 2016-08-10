class ProfilesController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @user_want_learn = @user.desired_cuisines
    @possible_instructors = User_Cuisines.cuisine_teach(@user_want_learn.map{|user_cuisine| user_cuisine.cuisine.id})
  end

  def community

  end
end

@possible_instructors.each do |user_cuisine|
  link_to user_cuisine.user.name, profile_path(user_cuisine.user.name,)
end
