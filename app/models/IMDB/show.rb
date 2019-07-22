class Show

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end
    
    # .all returns an array of all shows
    def self.all
        @@all
    end

    # #add_character adds a character to this show
    def add_character(character)
        ShowCharacter.new(self, character)
    end

    # #characters returns an array with all the characters in this show
    def characters
        show_characters = ShowCharacter.all.select {|show_character| show_character.show == self}
        show_characters.map {|show_character| show_character.character}
    end

    # #actors returns an array with all the actors in this movie
    def actors
        characters.map {|character| character.actor}.uniq
    end
    
    # #on_the_big_screen should return TV shows that share the same name as a movie -- What is this asking for?
    #def on_the_big_screen(movie_name)
    #    self.all.select {|show| show.name == movie_name}
    #end

end