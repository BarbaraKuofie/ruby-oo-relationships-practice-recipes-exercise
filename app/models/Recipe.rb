


class Recipe
    attr_accessor :name 

    @@all = []
    def initialize(name)
        @name = name 
        @@all << self 
    end 


    def self.all 
        @@all 
    end 
    
    ##this is a helper method for most popular or as needed 
    def user_counter 
        RecipeCard.all.select{|cards|cards.recipe == self}.count 
    end 

     def self.most_popular 
        RecipeCard.all.sort_by{|cards|cards.recipe.user_counter}.last
     end 

     def users 
       cards = RecipeCard.all.select{|card|card.recipe == self} 
       cards.map{|card|card.user}
     end 

    def ingredients 
         name = RecipeIngredient.all.select{|ingredient|ingredient.recipe == self} 
         name.map{|names|names.ingredient}
    end 

    ## Allergy class = user who is allergic and the ingredient 
    ## .ingredients returns all the ingredients in this recipe 
    def allergens
         allergy_instances = Allergy.all.select do |allergy|
            self.ingredients.include?(allergy.ingredient)
        end 
    end 

    ## since the ingredients parsed is an array, it needs to be iterated. 
    def add_ingredients(ingredients)
        ingredients.map do |ingredient|
            RecipeIngredient.new(self, ingredient)
        end 
    end 
end 



