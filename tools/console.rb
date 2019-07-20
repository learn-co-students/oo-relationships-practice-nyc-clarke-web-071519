require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Exercise: AirBnB
# Test Data
# - Guests
valentino = Guest.new("Valentino")
tony = Guest.new("Tony")
sebastian = Guest.new("Sebastian")
greg = Guest.new("Greg")
taris = Guest.new("Taris")
# - Listings
room1 = Listing.new("New York")
room2 = Listing.new("New York")
room3 = Listing.new("San Francisco")
room4 = Listing.new("San Francisco")
room5 = Listing.new("San Francisco")
room6 = Listing.new("Los Angeles")
# - Trips
trip1 = Trip.new(valentino, room1)
trip2 = Trip.new(valentino, room4)
trip3 = Trip.new(valentino, room5)
trip4 = Trip.new(tony, room1)
trip5 = Trip.new(tony, room3)
trip6 = Trip.new(tony, room5)
trip7 = Trip.new(tony, room6)
trip8 = Trip.new(sebastian, room2)
trip9 = Trip.new(sebastian, room6)
trip10 = Trip.new(greg, room1)
trip11 = Trip.new(taris, room3)

Pry.start
