class RecipesController < ApplicationController
  def index
    if params[:cuisine_id] == nil
      @recipes = Recipe.all
    else
      @recipes = Recipe.where(cuisine_id: params[:cuisine_id])
    end
    @recipe_cuisines = Recipe.select(:cuisine_id).order(:cuisine_id).distinct
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to @recipe, notice: "You have successfully created a recipe!"
    else
      render :new
    end
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      redirect_to @recipe
    else
      render :edit
    end
  end

  def destroy
    @recipe.destroy
    redirect_to recipes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name,:ingredients,:instructions,:expected_time,:user_id,:cuisine_id,:description,:pic)
  end

end
