class Client

    attr_accessor :trainer
    attr_reader :name

    @@all = []

    def initialize(name, trainer)
        @name = name
        @trainer = trainer

        @@all << self
    end

    #   .all returns an array of all clients
    def self.all
        @@all
    end

    #   - #assign_trainer should take a trainer as argument and assign it to the client
    def assign_trainer(new_trainer)
        self.trainer = new_trainer
    end

end