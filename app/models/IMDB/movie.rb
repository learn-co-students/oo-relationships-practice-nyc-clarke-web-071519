class Movie

    attr_reader :title

    @@all = []

    def initialize(title)
        @title = title

        @@all << self
    end

    # .all returns an array of all movies
    def self.all
        @@all
    end

    # #add_character adds a character to this movie
    def add_character(character)
        MovieCharacter.new(self, character)
    end

    # #add_character_by_name adds an existing character to a movie if a character by that name already exist, or tells the user that the character does not exist
    def add_character_by_name(character_name)
        if Character.all.includes?(character_name)
            add_character(Character.all.find {|character| character.name == character_name})
        else
            puts "That character does not exist"
        end
    end

    # #characters returns an array with all the characters in this movie
    def characters
        movie_characters = MovieCharacter.all.select {|movie_character| movie_character.movie == self}
        movie_characters.map {|movie_character| movie_character.character}
    end

    # #actors returns an array with all the actors in this movie
    def actors
        characters.map {|character| character.actor}.uniq
    end

    # #actor_count returns the total number of actors in this movie
    def actor_count
        actors.length
    end

    # .most_actors should return the movie which has the most actors in it. this is so the studio knows never to hire that director again because he/she makes expensive movies
    def self.most_actors
        movie_with_most_actors = self.all.max_by {|movie| movie.actor_count}
        number_of_actors_in_movie_with_most_actors = movie_with_most_actors.actor_count
        if self.all.select {|movie| movie.actor_count == number_of_actors_in_movie_with_most_actors}.length > 1
            self.all.select {|movie| movie.actor_count == number_of_actors_in_movie_with_most_actors}
        else
            self.all.max_by {|movie| movie.actor_count}
        end
    end

end