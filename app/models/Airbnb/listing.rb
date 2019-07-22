class Listing

    attr_reader :city_name

    @@all = []

    def initialize(city_name)
        @city_name = city_name

        @@all << self
    end
    
    #   .all returns an array of all listings
    def self.all
        @@all
    end

    #   #trips returns an array of all trips at a listing
    def trips
        Trip.all.select {|trip| trip.listing == self}
    end

    #   #guests returns an array of all guests who have stayed at a listing
    def guests
        trips.map {|trip| trip.guest}.uniq
    end
    
    #   #trip_count returns the number of trips that have been taken to that listing
    def trip_count
        trips.length
    end
    
    #   .find_all_by_city(city) takes an argument of a city name (as a string) and returns all the listings for that city
    def self.find_all_by_city(city)
        self.all.select {|listing| listing.city_name == city}
    end

    #   .most_popular finds the listing that has had the most trips
    def self.most_popular
        self.all.max_by {|listing| listing.trip_count}
    end

end