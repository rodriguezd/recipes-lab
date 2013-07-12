class RecipeIngredientsController < ApplicationController

  def destroy
    @association = RecipeIngredient.find(params[:id])
    @association.destroy

    redirect_to recipes_path
  end
end