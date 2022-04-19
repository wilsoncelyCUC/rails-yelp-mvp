# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
bristol = { name: "Epicure", address: "7 Boundary St, London E2 7JE",category: 'french' ,phone_number: '+335520831' }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: 'italian' ,phone_number: '+143235520831' }

[ bristol, pizza_east ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end


10.times do
  restaurant = Restaurant.create(
      name: Faker::Beer.name,
      address: Faker::Address.street_address,
      phone_number: Faker::PhoneNumber.cell_phone ,
      category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
puts "restaurant with #{restaurant.id} is created"
end
puts "Finished!"
