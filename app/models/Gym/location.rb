class Location

    attr_reader :name
    
    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    #   .all returns an array of all gym locations
    def self.all
        @@all
    end

    #   #add_trainer adds a specific trainer to this gym
    def add_trainer(trainer)
        TrainerLocation.new(trainer, self)
    end

    #   #trainers returns an array of all the trainers at a specific location
    def trainers
        trainer_locations = TrainerLocation.all.select {|trainer_location| trainer_location.location == self}
        trainer_locations.map {|trainer_location| trainer_location.trainer}
    end

    #   #clients returns an array of all the clients at a specific location
    def clients
        trainers.map {|trainer| trainer.clients}.flatten
    end

    #   .least_clients should find which location has the least clients training there. we need to increase the marketing spend for that location!
    def self.least_clients
        self.all.min_by {|location| location.clients.length}
    end

end