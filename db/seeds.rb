# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'wiping db clean'
Car.destroy_all
User.destroy_all

puts 'creating fake records'
user = User.new(email: 'testing123@gmail.com', password: 'testing', first_name: 'aamir', last_name: 'shaikh', role: 'owner')
user.save
car1 = Car.new(model: 'Tesla', description: 'good', location: 'newham', price: 45, image_url: "https://farm5.static.flickr.com/4871/45647786294_8df8d160a9.jpg")
car1.user = user
car1.save
car2 = Car.new(model: 'Ferrari', description: 'bad', location: 'peckham', price: 30, image_url: "https://farm5.static.flickr.com/4871/45647786294_8df8d160a9.jpg")
car2.user = user
car2.save
car3 = Car.new(model: 'Lamborghini', description: 'fair', location: 'brixton', price: 24, image_url: "https://farm5.static.flickr.com/4871/45647786294_8df8d160a9.jpg")
car3.user = user
car3.save
puts 'finished'
