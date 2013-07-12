# == Schema Information
#
# Table name: recipe_ingredients
#
#  id            :integer          not null, primary key
#  recipe_id     :integer
#  ingredient_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class RecipeIngredient < ActiveRecord::Base
  attr_accessible :ingredient_id, :recipe_id

  belongs_to :recipe
  belongs_to :ingredient
end
