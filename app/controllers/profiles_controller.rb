class ProfilesController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @recipes = Recipe.where("user_id = ?", @user)
  end

  def my_community
    @user = current_user
    @user_want_learn = @user.desired_cuisines

    # @possible_instructors = Interest.cuisine_teach(@user_want_learn.map{|user_cuisine| user_cuisine.cuisine.id})
  end


end
