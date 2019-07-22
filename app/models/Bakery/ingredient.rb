class Ingredient

    #   #dessert should return a dessert object for that ingredient
    attr_reader :name, :calorie_count, :dessert

    @@all = []

    def initialize(name, calorie_count, dessert)
        @name = name
        @calorie_count = calorie_count
        @dessert = dessert

        @@all << self
    end

    #   .all should return an array of all ingredients
    def self.all
        @@all
    end

    #   #bakery should return the bakery object for the bakery that uses that ingredient
    def bakery
        dessert.bakery
    end

    #   .find_all_by_name(ingredient) should take a string argument return an array of all ingredients that include that string in their name
    #   - .find_all_by_name('chocolate') might return ['chocolate sprinkles', 'chocolate mousse', 'chocolate']
    #   - make sure you aren't just looking for exact matches (like 'chocolate' == 'chocolate')
    def self.find_all_by_name(ingredient_name)
        Ingredient.all.find_all {|ingredient| ingredient.name.downcase.include?(ingredient_name.downcase)}
    end

end


