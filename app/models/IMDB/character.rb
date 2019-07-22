class Character

    attr_accessor :movie, :show
    attr_reader :name, :actor

    @@all = []

    def initialize(name, actor)
        @name = name
        @actor = actor

        @@all << self
    end

    # .all returns an array of all characters
    def self.all
        @@all
    end

    # #movies returns an array with all the movies that this character appears in
    def movies
        movie_characters = MovieCharacter.all.select {|movie_character| movie_character.character == self}
        movie_characters.map {|movie_character| movie_character.movie}
    end

    # #shows returns an array with all the shows that this character appears in
    def shows
        show_characters = ShowCharacter.all.select {|show_character| show_character.character == self}
        show_characters.map {|show_character| show_character.show}
    end
    
    # #movie_appearances returns the number of appearances a character has had in movies
    def movie_appearances
        movies.length
    end

    # #show_appearances returns the number of appearances a character has had in shows
    def show_appearances
        shows.length
    end

    # #appearance_count returns the total number of appearances a character has had in both movies and shows
    def appearance_count
        movie_appearances + show_appearances
    end


    # .most_appearances should return which character of film/television appears in the most films or tv shows
    def self.most_appearances
        character_with_most_appearances = self.all.max_by {|character| character.movie_appearances + character.show_appearances}
        appearance_count_of_character_with_most_appearances = character_with_most_appearances.appearance_count
        characters_with_most_appearances = self.all.select {|character| character.appearance_count == appearance_count_of_character_with_most_appearances}
        if characters_with_most_appearances.length > 1
            characters_with_most_appearances
        else
            characters_with_most_appearances[0]
        end

    end

end