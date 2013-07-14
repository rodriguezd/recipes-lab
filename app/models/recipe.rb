# == Schema Information
#
# Table name: recipes
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Recipe < ActiveRecord::Base
  attr_accessible :name

  has_many :recipe_ingredients, :dependent => :destroy
  has_many :ingredients, :through => :recipe_ingredients

  def add_ingredient_by_id(ingredient_ids)
    ingredient_ids.reject{|id| id == ""}.uniq.each do |ingredient_id|
      self.recipe_ingredients.build(:ingredient_id => ingredient_id)
    end

  end

  def add_ingredient_by_name(ingredient_names)
    ingredient_names.reject{|name| name == ""}.uniq.each do |ingredient_name|
      ingredient = Ingredient.where(:name => ingredient_name).first_or_create
      self.recipe_ingredients.build(:ingredient_id => ingredient.id)
    end
  end

end
