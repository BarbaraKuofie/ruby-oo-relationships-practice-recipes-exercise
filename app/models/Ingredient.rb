class Ingredient 

 attr_accessor :name 

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

    ## def self.most_coomom_allergen
    
end 


