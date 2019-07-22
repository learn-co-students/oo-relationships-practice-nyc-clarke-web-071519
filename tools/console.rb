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

# Exercise: Bakery
# Test Data
# - Bakeries
ansel = Bakery.new("Dominique Ansel Bakery")
levain = Bakery.new("Levain Bakery")
mollys = Bakery.new("Molly's Cupcakes")
# - Desserts
cronut = Dessert.new("Cronut", ansel)
smore = Dessert.new("Frozen S'more", ansel)
chocolate_chip_cookie = Dessert.new("Chocolate Chip Cookie", levain)
oatmeal_raisin_cookie = Dessert.new("Oatmeal Raisin Cookie", levain)
sugar_cookie = Dessert.new("Sugar", levain)
red_velvet_cupcake = Dessert.new("Red Velvet Cupcake", mollys)
# - Ingredients
croissant = Ingredient.new("Croissant", 100, cronut)
donut = Ingredient.new("Donut", 200, cronut)
chocolate_fudge = Ingredient.new("Chocolate Fudge", 75, smore)
marshmallow = Ingredient.new("Marshmallow", 90, smore)
graham_crackers = Ingredient.new("Graham Crackers", 25, smore)
chocolate_chips = Ingredient.new("Chocolate Chips", 45, chocolate_chip_cookie)
oatmeal = Ingredient.new("Oatmeal", 10, oatmeal_raisin_cookie)
raisins = Ingredient.new("Raisins", 5, oatmeal_raisin_cookie)
sugar = Ingredient.new("Sugar", 60, sugar_cookie)
butter = Ingredient.new("Butter", 55, red_velvet_cupcake)
red_sprinkles = Ingredient.new("Red Sprinkles", 2, red_velvet_cupcake)

# Exercise: IMDB
# Test Data
# - Actors
clark_gregg = Actor.new("Clark Gregg")
robert_downey_jr = Actor.new("Robert Downey Jr.")
tom_holland = Actor.new("Tom Holland")
chloe_bennet = Actor.new("Chloe Bennet")
mingna_wen = Actor.new("Ming-Na Wen")
emilia_clarke = Actor.new("Emilia Clarke")
kit_harington = Actor.new("Kit Harington")
zendaya = Actor.new("Zendaya")
# - Characters
phil_coulson = Character.new("Phil Coulson", clark_gregg)
tony_stark = Character.new("Tony Stark", robert_downey_jr)
peter_parker = Character.new("Peter Parker", tom_holland)
mj = Character.new("MJ", zendaya)
sherlock_holmes = Character.new("Sherlock Holmes", robert_downey_jr)
daisy_johnson = Character.new("Daisy 'Skye' Johnson", chloe_bennet)
melinda_may = Character.new("Melinda May", mingna_wen)
daenerys_targaryen = Character.new("Daenerys Targaryen", emilia_clarke)
jon_snow = Character.new("Jon Snow", kit_harington)
# - Movies
spiderman1 = Movie.new("Spider-Man: Homecoming")
spiderman2 = Movie.new("Spider-Man: Far From Home")
infinity_war = Movie.new("Avengers: Infinity War")
ironman1 = Movie.new("Iron Man")
sherlock_holmes1 = Movie.new("Sherlock Holmes")
sherlock_holmes2 = Movie.new("Sherlock Holmes: A Game of Shadows")
# - Movie Characters
spiderman1.add_character(peter_parker)
spiderman1.add_character(tony_stark)
spiderman1.add_character(mj)
spiderman2.add_character(peter_parker)
spiderman2.add_character(mj)
infinity_war.add_character(tony_stark)
infinity_war.add_character(peter_parker)
ironman1.add_character(tony_stark)
ironman1.add_character(phil_coulson)
sherlock_holmes1.add_character(sherlock_holmes)
sherlock_holmes2.add_character(sherlock_holmes)
# - Shows
shield = Show.new("Agents of S.H.I.E.L.D.")
game_of_thrones = Show.new("Game of Thrones")
# - Show Characters
shield.add_character(phil_coulson)
shield.add_character(daisy_johnson)
shield.add_character(melinda_may)
game_of_thrones.add_character(daenerys_targaryen)
game_of_thrones.add_character(jon_snow)

# Exercise: Crowdfunding
# Test Data
# - Users
aj = User.new("AJ")
andrew = User.new("Andrew")
varun = User.new("Varun")
hyo = User.new("Hyo")
alyssa = User.new("Alyssa")
jason = User.new("Jason")
meghan = User.new("Meghan")
# - Projects
project1 = Project.new("Smart Watch", aj, 50000)
project2 = Project.new("My Life as a TV Show", andrew, 15000)
project3 = Project.new("Slick Shorts", varun, 5000)
project4 = Project.new("Subway Delay Predictor", aj, 20000)
# - Pledges
hyo.make_pledge(project1, 1000)
hyo.make_pledge(project3, 20)
alyssa.make_pledge(project2, 300)
jason.make_pledge(project1, 1500)
jason.make_pledge(project2, 800)
jason.make_pledge(project3, 50)
meghan.make_pledge(project2, 750)

# Exercise: Crowdfunding
# Test Data
# - Locations
columbuscircle = Location.new("Equinox Columbus Circle")
hudsonyards = Location.new("Equinox Hudson Yards")
soho = Location.new("Equinox Soho")
tribeca = Location.new("Equinox Tribeca")
williamsburg = Location.new("Equinox Williamsburg")
# - Trainers
kayla_itsines = Trainer.new("Kayla Itsines")
jillian_michaels = Trainer.new("Jillian Michaels")
tony_horton = Trainer.new("Tony Horton")
# - Clients
therock = Client.new("Dwayne 'the Rock' Johnson", tony_horton)
mark_wahlberg = Client.new("Mark Wahlberg", tony_horton)
will_smith = Client.new("Will Smith", jillian_michaels)
jennifer_lopez = Client.new("Jennifer Lopez", kayla_itsines)
jason_statham = Client.new("Jason Statham", jillian_michaels)
jessica_alba = Client.new("Jessica Alba", jillian_michaels)
# - TrainerLocations
kayla_itsines.join_location(columbuscircle)
kayla_itsines.join_location(soho)
kayla_itsines.join_location(tribeca)
jillian_michaels.join_location(hudsonyards)
jillian_michaels.join_location(tribeca)
tony_horton.join_location(columbuscircle)
tony_horton.join_location(hudsonyards)
tony_horton.join_location(soho)
tony_horton.join_location(williamsburg)

# Exercise: Crowdfunding
# Test Data
# - Passengers
harry = Passenger.new("Harry Potter")
hermione = Passenger.new("Hermione Granger")
ron = Passenger.new("Ron Weasley")
neville = Passenger.new("Neville Longbottom")
ginny = Passenger.new("Ginny Weasley")
# - Drivers
dumbledore = Driver.new("Dumbledore")
mcgonagall = Driver.new("Mcgonagall")
snape = Driver.new("Snape")
# - Rides
ride1 = Ride.new(dumbledore, harry, 10)
ride2 = Ride.new(snape, harry, 50)
ride3 = Ride.new(mcgonagall, neville, 15)
ride4 = Ride.new(snape, ron, 25)
ride5 = Ride.new(dumbledore, hermione, 30)
ride6 = Ride.new(mcgonagall, hermione, 12)
ride7 = Ride.new(snape, hermione, 5)
ride8 = Ride.new(mcgonagall,ginny, 40)
ride9 = Ride.new(snape,neville, 2)
ride10 = Ride.new(snape,ginny, 100)
ride11 = Ride.new(mcgonagall,ginny, 22)

Pry.start
