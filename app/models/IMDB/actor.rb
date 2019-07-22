class Actor

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    # .all returns an array with all actors.
    def self.all
        @@all
    end

    # #characters returns an array with all the characters that this actor has played.
    def characters
        Character.all.select {|character| character.actor == self }
    end

    def character_names
        characters.map {|character| character.name}
    end

    # .most_characters should return which actor has the most different characters played. (probably meryl streep)
    def self.most_characters
        self.all.max_by {|actor| actor.characters.length}
    end

end