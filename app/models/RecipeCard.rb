class RecipeCard 
    attr_accessor  :title, :date, :rating, :user, :recipe 

    @@all = []

    def initialize(title, date, rating, recipe, user)
        @title = title
        @date = date 
        @rating = rating 
        @recipe = recipe
        @user = user 
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

end 