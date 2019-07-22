class Trip

    #   #listing returns the listing object for the trip
    #   #guest returns the guest object for the trip
    attr_reader :guest, :listing

    @@all = []

    def initialize(guest, listing)
        @guest = guest
        @listing = listing

        @@all << self
    end

    #   .all returns an array of all trips
    def self.all
        @@all
    end

end