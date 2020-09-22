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

#helper method for most common allergen. this is to count the instances of ingredients
## that shows up in allergy
    def user_counter
        Allergy.all.select{|allergy|allergy.ingredient == self}.count 
    end

#should return the ingredient
#instance that the highest number of users are allergic to
    def self.most_common_allergen
        Allergy.all.sort_by{|allergies|allergies.ingredient.user_counter}.last.ingredient
    end 
end 


