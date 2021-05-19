# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
Ushido = { name: "Ushido", address: "Lychener Str. 18, 10437 Berlin", category: "japanese" }
Gazzo =  { name: "Gazzo", address: "Hobrechtstraße 57, 12047 Berlin", category: "italian" }
Zola =  { name: "Zola", address: "Paul-Lincke-Ufer 39-40, 10999 Berlin", category: "italian" }
Feedback = { name: "Feedback", address: "Paul-Lincke-Ufer 45, 10999 Berlin", category: "chinese" }
Lamazère = { name: "Feedback", address: "Stuttgarter Platz 18, 10627 Berlin", category: "french" }


[ Ushido, Gazzo, Zola, Feedback, Lamazère ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"