# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Flat.destroy_all

private_paradise = { name:'Private Paradise', address: 'Cloud № 9', description: 'Your own private paradise. Sleep on your own cloud aqnd enjoy our outstanding view and havenly silence', price_per_night: 999, number_of_guests: 2}
cozy_castle = { name:'Cozy Castle', address: 'Sherwood Forest 1', description: 'This old castle has history written all over its ancient walls. Marvel at the dungeon or fall in love with the tower.', price_per_night: 500, number_of_guests: 200}
luxury_loft = { name:'Luxury Loft', address: 'Wallstreet 21', description: 'The most decadent luxury arpatment money can rent. Sleep where the stock market never does.', price_per_night: 100000000000, number_of_guests: 0}
humble_hut = { name:'Humble Hut', address: 'Black Hill Forest', description: "It's not much, but it's yours. Some say you can hear the whispers of the local witch at night", price_per_night: 5, number_of_guests: 8}

[private_paradise, cozy_castle, luxury_loft, humble_hut].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
