

class User 
    attr_accessor :name 

    @@all = []
    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

    #should return all of the recipes this user has recipe cards for
    def recipes
        RecipeCard.all.select{|recipe|recipe.user == self}
    end 

    ## added title=nil because title is not given here but required on intialize 
    def add_recipe_card(date, rating, recipe)
        RecipeCard.new(title = nil, date, rating, recipe, self)
    end 
 
    #accepts an ingredient instance and creates a new allergy. reference self as the 
    #instance of user
    def declare_allergy(ingredient_instance)
        Allergy.new(self, ingredient_instance)
    end 

    # this should return all the ingredients this user is allergic to 
    ## user and ingredients are connected through allergy 
    def allergens 
       Allergy.all.select{|allergy|allergy.user == self}
    end 
    
    ## should return the top 3 recipes added for this user 
    ## sort all recipes by this by their rating, then reverse the list, return first 3
    def top_three_recipes 
        self.recipes.sort_by{|recipe|recipe.rating}.reverse.first(3)
    end 
    #should return the recipe most recently added to the user's cookbook 
    ## changed the year to integer so it can be calculated 
    def most_recent_recipe
        self.recipes.sort_by{|recipe|recipe.date.to_i}.last  
    end 


    def safe_recipes 
        RecipeCard.all.select do |recipes|
           unless
             self.allergens.include?(recipes.ingredient)
           end
        end 
    end 
end 