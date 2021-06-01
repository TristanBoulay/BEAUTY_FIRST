# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Creating 30 services..."

services = ["Deep tissue massage", 'Hair styling, hair cuts', 'Spray tanning and sunless tanning', 'Cellulite treatments', 'Colonic Hydrotherapy', 'Manicure', 'Pedicure', 'Hydrafacial', 'Hair extensions', 'Laser skin rejuvenation', 'Foot massage', 'Colonic Hydrotherapy', 'Body exfoliation treatments', 'Body waxing treatments', 'Laser hair removal']

url_array = ["https://res.cloudinary.com/mayen/image/upload/v1622553108/beauty/manicure_jknv6a.jpg", "https://res.cloudinary.com/mayen/image/upload/v1622553109/beauty/wellness_fl6qe6.jpg", "https://res.cloudinary.com/mayen/image/upload/v1622553108/beauty/pedicure_qyfdpk.jpg", "https://res.cloudinary.com/mayen/image/upload/v1622553108/beauty/massage_zq6wlg.jpg", "https://res.cloudinary.com/mayen/image/upload/v1622553108/beauty/wax_treatment_y79ntn.jpg", "https://res.cloudinary.com/mayen/image/upload/v1622553108/beauty/styling_chair_rzix6j.jpg", "https://res.cloudinary.com/mayen/image/upload/v1622553108/beauty/manicure_jknv6a.png", "https://res.cloudinary.com/mayen/image/upload/v1622553108/beauty/manicure_cvk16t.jpg", "https://res.cloudinary.com/mayen/image/upload/v1622553108/beauty/makeup_tjwugw.jpg", "https://res.cloudinary.com/mayen/image/upload/v1622553108/beauty/hair_styling_txbvi7.jpg", "https://res.cloudinary.com/mayen/image/upload/v1622553108/beauty/facial_massage_kxy9ny.jpg", "https://res.cloudinary.com/mayen/image/upload/v1622553108/beauty/facial_wcz0tz.jpg"]
url_array.each do |url|
30.times do
  service = Service.new(
    title: services.sample,
    name: Faker::Company.name,
    address: Faker::Address.street_address,
    price: Faker::Commerce.price
  )
  file = URI.open(url)
  service.photo.attach(io: file, filename: url, content_type: 'image/jpg')
  service.save!
end
service.save!
end

puts 'finished'


