class Bakery

    attr_reader :name

    @@all = []
    def initialize(name)
        @name = name

        @@all << self
    end
    
    #   .all should return an array of all bakeries
    def self.all
        @@all
    end

    #   #desserts should return an array of desserts the bakery makes
    def desserts
        Dessert.all.select {|dessert| dessert.bakery == self}
    end

    #   #ingredients should return an array of ingredients for the bakery's desserts
    def ingredients
        desserts.map {|dessert| dessert.ingredients}.flatten
    end

    #   #total_calories (helper method) returns the total calories of all desserts at this bakery
    def total_calories
        desserts.reduce(0) {|total, dessert| total + dessert.calories}
    end
    
    #   #number_of_desserts(helper method) returns the total number of desserts offered by this bakery
    def number_of_desserts
        desserts.length
    end

    #   #average_calories should return a number totaling the average number of calories for the desserts sold at this bakery
    def average_calories
        total_calories / number_of_desserts
    end

    #   #shopping_list should return a string of names for ingredients for the bakery
    def shopping_list
        ingredient_names = ingredients.map {|ingredient| ingredient.name}
        ingredient_names.join(", ")
    end

end

