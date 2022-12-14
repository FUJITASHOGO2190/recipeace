class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    @recipe = Recipe.new
  end

  def create
    Recipe.create(recipe_params)
    @recipes = Recipe.all
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end
 
  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)
    redirect_to root_path
  end
 

  def destroy
    recipe = Recipe.find(params[:id])
    recipe.destroy
    redirect_to root_path
  end

  private
  def recipe_params
    params.require(:recipe).permit(:dish_name, :cook_method)
  end

end
