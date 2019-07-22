class Guest

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end
    
    #   .all returns an array of all guests
    def self.all
        @@all
    end

    #   #trips returns an array of all trips a guest has made
    def trips
        Trip.all.select {|trip| trip.guest == self}
    end

    #   #listings returns an array of all listings a guest has stayed at
    def listings
        trips.map {|trip| trip.listing}
    end

    #   #trip_count returns the number of trips a guest has taken
    def trip_count
        trips.length
    end
    
    #   .pro_traveller returns an array of all guests who have made over 1 trip
    def self.pro_traveller
        Guest.all.select {|guest| guest.trip_count > 1}
    end
    
    #   .find_all_by_name(name) takes an argument of a name (as a string), returns the all guests with that name
    def self.find_all_by_name(name)
        Guest.all.select {|guest| guest.name == name}
    end

end