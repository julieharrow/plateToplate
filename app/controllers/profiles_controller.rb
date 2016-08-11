class ProfilesController < ApplicationController

  def index
    @users = User.all
  end

  def community
    @user = current_user
    @user_want_learn = @user.desired_cuisines
    # @possible_instructors = Interest.cuisine_teach(@user_want_learn.map{|user_cuisine| user_cuisine.cuisine.id})
  end

  def show
    @user = User.find(params[:id])
<<<<<<< HEAD
=======
   # @user_want_learn = @user.desired_cuisines
    #@possible_instructors = User_Cuisines.cuisine_teach(@user_want_learn.map{|user_cuisine| user_cuisine.cuisine.id})
>>>>>>> fd54870ed6a61008f8c4811810e0ead05cd1f7c2
  end


end
<<<<<<< HEAD
=======

#@possible_instructors.each do |user_cuisine|
  #link_to user_cuisine.user.name, profile_path(user_cuisine.user.name,)
#end
>>>>>>> fd54870ed6a61008f8c4811810e0ead05cd1f7c2
