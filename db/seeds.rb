# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating flats...'
flatone = {
  name: 'Chez Nico',
  address: '7 Boundary St, London',
  description: '0647409298',
  price_per_night: 270,
  number_of_guests: 3
}

flattwo = {
  name: 'Chez Benj',
  address: '20 Av Montaigne, Paris',
  description: '0645309870',
  price_per_night: 205,
  number_of_guests: 2
}

flatthree = {
  name: 'Chez Louise',
  address: '42 rue du fion, Sainté',
  description: '0677653098',
  price_per_night: 55,
  number_of_guests: 12
}

flatfour = {
  name: 'Chez Robin',
  address: '10 Bvd la Victoire, Lyon',
  description: '0700865598',
  price_per_night: 105,
  number_of_guests: 6
}

[flatone, flattwo, flatthree, flatfour].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts 'Finished!'
