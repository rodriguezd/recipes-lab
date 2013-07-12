module RecipesHelper

  def delete_association(recipe_id, ingredient_id)
    RecipeIngredient.where(:recipe_id => recipe_id, :ingredient_id => ingredient_id).first
  end

end
