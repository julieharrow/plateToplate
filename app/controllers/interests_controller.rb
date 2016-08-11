class InterestsController < ApplicationController
  def index
    @interests = Interest.all
  end

  def show
    @interest = Interest.find(params[:id])
  end


  def new_learn
    @interest = Interest.new
  end

  def new_teach
    @interest = Interest.new
  end

  def edit
  end

  def create
    @interest = Interest.new(interest_params)
    if @interest.save
      redirect_to interest_new_path, notice: "You have successfully created a interest!"
    else
      render :new
    end
  end

  def update
    if @interest.update(interest_params)
      format.html {redirect_to @interest, notice: "interest was successfully updated."}
    else
      format.html {render :edit}
    end
  end

  def destroy
    @interest.destroy
    redirect_to interests_path
  end

  private

  def interest_params
    params.require(:interest).permit(:user_id,:cuisine_id,:teach,:learn)
  end

end
