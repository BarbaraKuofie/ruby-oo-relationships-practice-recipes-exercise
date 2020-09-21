require_relative '../config/environment.rb'

##instances of recipes 
recipe1 = Recipe.new("sandwich")
recipe2 = Recipe.new("soup")

##instances of users
barbara = User.new("Barbara")
joshua = User.new("Joshua")
max = User.new("max")

## (title, date, rating, user, recipe )
#instances of recipicards 
rc1 = RecipeCard.new("how to make a sandwich", "2020-02-02", 3, recipe1, barbara)
rc2 = RecipeCard.new("Grandma's Soup", "1989-12-24", 5, recipe2, joshua)
rc3 = RecipeCard.new("Greatest Sandwich", "2012-02-13", 4, recipe1, joshua)


## create ingredient instances 
salt = Ingredient.new("salt")
pepper = Ingredient.new("pepper")
chicken = Ingredient.new("chicken")
water = Ingredient.new("water")
broth = Ingredient.new("broth")
bread = Ingredient.new("bread")
mayo = Ingredient.new("mayo")
lettuce = Ingredient.new("lettuce")

# create RecipeIngredient 
r_ing1 = RecipeIngredient.new(recipe1, bread)
r_ing2 = RecipeIngredient.new(recipe1, chicken)
r_ing3 = RecipeIngredient.new(recipe1, lettuce)
r_ing4 = RecipeIngredient.new(recipe1, mayo)
r_ing4 = RecipeIngredient.new(recipe2, chicken)
r_ing5 = RecipeIngredient.new(recipe2, broth)
r_ing6 = RecipeIngredient.new(recipe2, salt)
r_ing7 = RecipeIngredient.new(recipe2, pepper)
r_ing8 = RecipeIngredient.new(recipe2, water)


## create allergens 
breakout1 = Allergy.new(barbara, chicken)
breakout2 = Allergy.new(joshua, salt)
breakout3 = Allergy.new(max, bread)

##this should create a new reicpecard  
binding.pry 
