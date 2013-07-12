# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

a = Recipe.create(:name => "soup")
b = Recipe.create(:name => "lasagna")
c = Recipe.create(:name => "cookies")
d = Recipe.create(:name => "omelette")

t = Ingredient.create(:name => "eggs")
u = Ingredient.create(:name => "flour")
v = Ingredient.create(:name => "water")
w = Ingredient.create(:name => "milk")
x = Ingredient.create(:name => "onion")
y = Ingredient.create(:name => "noodles")
z = Ingredient.create(:name => "cheese")

a.recipe_ingredients.build(:ingredient_id => v.id)
a.recipe_ingredients.build(:ingredient_id => x.id)
a.recipe_ingredients.build(:ingredient_id => y.id)

b.recipe_ingredients.build(:ingredient_id => z.id)
b.recipe_ingredients.build(:ingredient_id => x.id)
b.recipe_ingredients.build(:ingredient_id => y.id)

c.recipe_ingredients.build(:ingredient_id => t.id)
c.recipe_ingredients.build(:ingredient_id => v.id)
c.recipe_ingredients.build(:ingredient_id => u.id)
c.recipe_ingredients.build(:ingredient_id => w.id)

d.recipe_ingredients.build(:ingredient_id => t.id)
d.recipe_ingredients.build(:ingredient_id => w.id)
d.recipe_ingredients.build(:ingredient_id => x.id)
d.recipe_ingredients.build(:ingredient_id => z.id)

a.save
b.save
c.save
d.save