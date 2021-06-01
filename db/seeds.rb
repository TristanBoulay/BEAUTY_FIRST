# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying all services!"
Service.destroy_all

puts "Creating 15 services..."

Service.create!(
  title: 'Deep tissue massage',
  address: Faker::Address.street_address,
  price: Faker::Commerce.price
)

Service.create!(
  title: 'Hair styling, hair cuts',
  address: Faker::Address.street_address,
  price: Faker::Commerce.price
)

Service.create!(
  title: 'Spray tanning and sunless tanning',
  address: Faker::Address.street_address,
  price: Faker::Commerce.price
)

Service.create!(
  title: 'Cellulite treatments',
  address: Faker::Address.street_address,
  price: Faker::Commerce.price
)

Service.create!(
  title: 'Colonic Hydrotherapy',
  address: Faker::Address.street_address,
  price: Faker::Commerce.price
)

Service.create!(
  title: 'Manicure',
  address: Faker::Address.street_address,
  price: Faker::Commerce.price
)

Service.create!(
  title: 'Pedicure',
  address: Faker::Address.street_address,
  price: Faker::Commerce.price
)

Service.create!(
  title: 'Hydrafacial',
  address: Faker::Address.street_address,
  price: Faker::Commerce.price
)

Service.create!(
  title: 'Laser skin rejuvenation',
  address: Faker::Address.street_address,
  price: Faker::Commerce.price
)

Service.create!(
  title: 'Hair extensions',
  address: Faker::Address.street_address,
  price: Faker::Commerce.price
)

Service.create!(
  title: 'Foot massage',
  address: Faker::Address.street_address,
  price: Faker::Commerce.price
)

Service.create!(
  title: 'Colonic Hydrotherapy',
  address: Faker::Address.street_address,
  price: Faker::Commerce.price
)

Service.create!(
  title: 'Body exfoliation treatments',
  address: Faker::Address.street_address,
  price: Faker::Commerce.price
)

Service.create!(
  title: 'Body waxing treatments',
  address: Faker::Address.street_address,
  price: Faker::Commerce.price
)

Service.create!(
  title: 'Laser hair removal',
  address: Faker::Address.street_address,
  price: Faker::Commerce.price
)

puts "All done"


