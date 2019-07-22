class Ride

    # Ride#passenger Returns the Passenger object for that ride
    # Ride#driver Returns the Driver object for that ride
    # Ride#distance Returns the distance of the ride
    attr_reader :driver, :passenger, :distance

    @@all = []

    # A Ride should be initialized with a driver (as a Driver object), a passenger (as a Passenger object), and a distance (as a float i.e. `3.2`). The distance refers to miles.
    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance.to_f
        @@all << self
    end

    def self.all
        @@all
    end

    # Ride.average_distance Returns the average distance across ALL rides
    def self.average_distance
        all_ride_distances = Ride.all.map {|ride|ride.distance}
        all_ride_distances.reduce {|total, distance| total + distance} / all_ride_distances.length
    end

end