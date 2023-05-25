# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
nyx = { name: "Nyx", address: "Omirou 19", phone_number: "+30 6981518000", category: "japanese"}
locanda_locateli = { name: "Locanda Locateli", address: "8 Seymour St", phone_number: "+44 20 7935 9088", category: "italian"}
naturally_chinise_restaurant = { name: "Naturally Chinese Restaurant", address: "59 Brighton Rd", phone_number: "+44 20 8399 5533", category: "chinese"}
brasserie_zedel = { name: "Brasserie Zedel", address: "20 Sherwood St", phone_number: "+44 20 7734 4888", category: "french"}
the_dovetail = {name: "The Dovetail", address: "9-10 Jerusalem Passage", phone_number: "+44 20 7490 7321", category: "belgian"}

[nyx, locanda_locateli, naturally_chinise_restaurant, brasserie_zedel, the_dovetail].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
