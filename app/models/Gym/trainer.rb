class Trainer

    attr_reader :name
    
    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    #   .all returns an array of all trainers
    def self.all
        @@all
    end

    #   #join_location associates a trainer to a specific gym location
    def join_location(location)
        TrainerLocation.new(self, location)
    end

    #   #clients returns an array of all this trainer's clients
    def clients
        Client.all.select {|client| client.trainer == self}
    end

    #   .most_clients should find which trainer has the most clients. give that trainer a bonus!
    def self.most_clients
        self.all.max_by {|trainer| trainer.clients.length}
    end

end