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

    
    #  def self.most_popular 
    #   recipe_count = RecipeCard.all.select{|recipes|recipes.recipe == recipe }.count
    #   self.all.sort_by{|recipe|recipe}.last 
    #  end 
end 