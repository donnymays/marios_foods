Product.destroy_all
Review.destroy_all

50.times do |index|
  product = Product.create!(name: Faker::Food.ingredient, cost: Faker::Commerce.price, country_of_origin: Faker::TvShows::GameOfThrones.city)
end  
  


250.times do |index|
  product_random_id = Product.all.ids.sample
  review = Review.create!(author: Faker::Movies::Lebowski.character, content: Faker::Lorem.characters(number: 150), rating: rand(6), product_id: product_random_id)
end