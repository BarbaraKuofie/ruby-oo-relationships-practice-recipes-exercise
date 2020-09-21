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

    def recipe 
        RecipeCard.all.select{|recipe|recipe.user == self}
    end 

    def add_recipe_card(date, rating, recipe)
        RecipeCard.new(date, rating, recipe, self)
    end 

end 