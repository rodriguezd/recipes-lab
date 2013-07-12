class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def edit
    @ingredient = Recipe.find(params[:id])
  end

  def update
    @ingredient = Ingredient.find(params[:id])
    @ingredient.update_attributes(params[:name])

    redirect_to ingredient_path(@ingredient)

  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy

    redirect_to ingredients_path
  end

end
