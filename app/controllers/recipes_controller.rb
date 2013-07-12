class RecipesController < ApplicationController

  def new
    @ingredients = Ingredient.all
  end

  def create
    @recipe = Recipe.new(:name => params[:name])

    @recipe.add_ingredient_by_id(params[:ingredient_ids])
    @recipe.add_ingredient_by_name(params[:ingredient_names])
    @recipe.save

    redirect_to recipe_path(@recipe)
  end

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update_attributes(:name => params[:name])

    redirect_to recipe_path(@recipe)

  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy

    redirect_to recipes_path
  end

end
