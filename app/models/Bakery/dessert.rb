class Dessert

    #   #bakery should return the bakery object for the dessert
    attr_reader :name, :bakery

    @@all = []
    def initialize(name, bakery)
        @name = name
        @bakery = bakery

        @@all << self
    end

    #   .all should return an array of all desserts
    def self.all
        @@all
    end

    #   #ingredients should return an array of ingredients for the dessert
    def ingredients
        Ingredient.all.select {|ingredient| ingredient.dessert == self}
    end

    #   #calories should return a number totaling all the calories for all the ingredients included in that dessert
    def calories
        ingredients.reduce(0) {|total, ingredient| total + ingredient.calorie_count}
    end
    
end

