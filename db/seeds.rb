require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Service.destroy_all
puts "Creating services..."


services = ["Deep tissue massage", 'Hair styling, hair cuts', 'Spray tanning and sunless tanning', 'Cellulite treatments', 'Colonic Hydrotherapy', 'Manicure', 'Pedicure', 'Hydrafacial', 'Hair extensions', 'Laser skin rejuvenation', 'Foot massage', 'Colonic Hydrotherapy', 'Body exfoliation treatments', 'Body waxing treatments', 'Laser hair removal']
addresses = [ "avenida da libertade","IJsbaanpad 9, 1076 CV Amsterdam, Pays-Bas","R. Gonçalves Zarco 19, 1400-033 Lisboa", "254 Rue de la Croix Nivert, 75015 Paris, France", "R. de São Félix 1, 2655-253 Ericeira","Calle de Lagasca, 90, 28006 Madrid, Espagne", "Alameda Dom Afonso Henriques 47A Piso superior, 1000-123 Lisboa", "R. Castilho 39, 1250-068 Lisboa", "Tv. dos Pescadores 21, 1200-328 Lisboa", "Rua Garret 60 Lj4 bbnails, 1200-204 Lisboa", "C. del Consell de Cent, 266, 08011 Barcelona, Espagne", "C. de Villarroel, 106, 08011 Barcelona, Espagne", "Lugar do Montinho, 8550-232 Monchique" ]
url_array = ["https://res.cloudinary.com/mayen/image/upload/v1622553108/beauty/manicure_jknv6a.jpg", "https://res.cloudinary.com/mayen/image/upload/v1622553109/beauty/wellness_fl6qe6.jpg", "https://res.cloudinary.com/mayen/image/upload/v1622553108/beauty/pedicure_qyfdpk.jpg", "https://res.cloudinary.com/mayen/image/upload/v1622553108/beauty/massage_zq6wlg.jpg", "https://res.cloudinary.com/mayen/image/upload/v1622553108/beauty/wax_treatment_y79ntn.jpg", "https://res.cloudinary.com/mayen/image/upload/v1622553108/beauty/styling_chair_rzix6j.jpg", "https://res.cloudinary.com/mayen/image/upload/v1622553108/beauty/manicure_jknv6a.png", "https://res.cloudinary.com/mayen/image/upload/v1622553108/beauty/manicure_cvk16t.jpg", "https://res.cloudinary.com/mayen/image/upload/v1622553108/beauty/makeup_tjwugw.jpg", "https://res.cloudinary.com/mayen/image/upload/v1622553108/beauty/hair_styling_txbvi7.jpg", "https://res.cloudinary.com/mayen/image/upload/v1622553108/beauty/facial_massage_kxy9ny.jpg", "https://res.cloudinary.com/mayen/image/upload/v1622553108/beauty/facial_wcz0tz.jpg"]
url_array.each do |url|
  service = Service.create!(
    title: services.sample,
    name: Faker::Company.name,
    address: addresses.sample,
    price: Faker::Commerce.price
  )
  file = URI.open(url)
  service.photo.attach(io: file, filename: url, content_type: 'image/jpg')
  service.save!
end

puts 'finished'


