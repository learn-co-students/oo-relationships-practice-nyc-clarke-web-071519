class Passenger
    
    # After the Passenger has been initialized, it (the name) shouldn't be changed.
    # Passenger#name Returns the name of the passenger
    attr_reader :name

    @@all = []

    # A Passenger should be initialized with a name as a string. 
    def initialize(name)
        @name = name
        @@all << self
    end

    # Passenger.all Returns an array of all Passengers
    def self.all
        @@all
    end

    # Passenger#rides Returns an array of Ride instances that this person has been on
    def rides
        Ride.all.select {|ride| ride.passenger == self}
    end

    #Passenger#drivers Returns an array of Driver instances that this person has rode with
    def drivers
        rides.map {|ride| ride.driver}.uniq
    end

    #Passenger#total_distance Returns the floating number that represents the total distance the passenger has travelled using the service
    def total_distance
        rides.reduce(0) {|total, ride| total + ride.distance}
    end

    #Passenger.premium_members Returns an array of all Passengers who have travelled over 100 miles in total with the service
    def self.premium_members
        Passenger.all.select {|passenger| passenger.total_distance > 100}
    end

end