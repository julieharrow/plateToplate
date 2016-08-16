class ProfilesController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def teachers
    
  end

  def community
    @user = current_user
    @community_of_learners = []
    for @user.wants_to_teach.each |interest|
      @community_of_learners << (interest.cuisine_learn(interest.cuisine)).users
    end
    @community_of_teachers = []
    for @user.wants_to_learn.each |interest|
      @community_of_teachers << (interest.cuisine_teach(interest.cuisine)).users
    end

    # @possible_instructors = Interest.cuisine_teach(@user_want_learn.map{|user_cuisine| user_cuisine.cuisine.id})
  end


end
