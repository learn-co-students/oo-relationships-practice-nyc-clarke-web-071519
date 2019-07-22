class Driver

    # Driver#name Returns the driver's name
    attr_reader :name
    
    @@all = []

    # A Driver should be initialized with a name as a string.
    def initialize(name)
        @name = name
        @@all << self
    end

    # Driver.all Returns an array of all Drivers
    def self.all
        @@all
    end

    # Driver#rides Returns an array of all Rides a driver has made
    def rides
        Ride.all.select {|ride| ride.driver == self}
    end

    # Driver#passenger_names Returns an array of all Passengers' names a driver has driven. The names should be **unique** (no repeats).
    def passenger_names
        rides.map {|ride| ride.passenger.name}.uniq
    end

    # Driver.mileage_cap(distance) Takes an argument of a distance (float) and returns an array of all Drivers who have driven over the mileage
    def total_distance
        rides.reduce(0) {|total, ride| total + ride.distance}
    end
    
    def self.mileage_cap(distance)
        Driver.all.select {|driver| driver.total_distance > distance}
    end

end