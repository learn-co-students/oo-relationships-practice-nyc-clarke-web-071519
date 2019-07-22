class TrainerLocation

    attr_reader :trainer, :location
    
    @@all = []

    def initialize(trainer, location)
        @trainer = trainer
        @location = location

        @@all << self
    end

    def self.all
        @@all
    end

end