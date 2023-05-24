puts "Cleaning database..."
Restaurant.destroy_all


puts "Creating 10 new restaurants..."
10.times do
  resto = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: %w[chinese italian japanese french belgian].sample,
  )
  puts "Restaurant with id #{resto.id} was created"
end

puts "All done!"



# review: rand(0..5).times do
#   review = Review.create!(
#     rating: rand(0..5),
#     content: Faker::Movie.quote,
#   )
# end
