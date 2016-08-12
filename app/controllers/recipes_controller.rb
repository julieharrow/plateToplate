class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def edit
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
    if @recipe.update(recipe_params)
      format.html {redirect_to @recipe, notice: "Recipe was successfully updated."}
    else
      format.html {render :edit}
    end
  end

  def destroy
    @recipe.destroy
    redirect_to recipes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name,:ingredients,:instructions,:expected_time,:pic)
  end

end
