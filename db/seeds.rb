# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Creating 30 services..."

services = ["Deep tissue massage", 'Hair styling, hair cuts', 'Spray tanning and sunless tanning', 'Cellulite treatments', 'Colonic Hydrotherapy', 'Manicure', 'Pedicure', 'Hydrafacial', 'Hair extensions', 'Laser skin rejuvenation', 'Foot massage', 'Colonic Hydrotherapy', 'Body exfoliation treatments', 'Body waxing treatments', 'Laser hair removal']

30.times do
  service = Service.new(
    title: services.sample,
    name: Faker::Company.name,
    address: Faker::Address.street_address,
    price: Faker::Commerce.price
  )
  service.save!
end

puts 'finished'


