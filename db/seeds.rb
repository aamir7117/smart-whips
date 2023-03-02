# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

file = URI.open("https://images.unsplash.com/photo-1503376780353-7e6692767b70?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80")

puts 'wiping db clean'
Car.destroy_all
User.destroy_all

puts 'creating fake records'
user = User.new( username: 'testman', email: 'testing123@gmail.com', password: 'testing', first_name: 'aamir', last_name: 'shaikh', role: 'owner')
user.save

<<<<<<< HEAD
car1 = Car.new(model: 'Tesla', description: 'good', location: 'newham', price: 45)
car1.photo.attach(io: file, filename: "car1.png", content_type: "image/png")
=======
car1 = Car.new(model: 'Tesla', description: 'This car is fantastic. You know you want to rent it!', location: 'newham', price: 45)
>>>>>>> 5ff553609c448f1d5ba2256fc5acc46e12abbb03
car1.user = user
# debugger
car1.photo.attach(
  io:  File.open(File.join(Rails.root,'app/assets/images/image.png')),
  filename: 'image.jpg'
)
car1.save

<<<<<<< HEAD
car2 = Car.new(model: 'Ferrari', description: 'bad', location: 'peckham', price: 30)
car2.photo.attach(io: file, filename: "car2.png", content_type: "image/png")
=======
car2 = Car.new(model: 'Ferrari', description: 'This car is horrible. Probably stay away from it', location: 'peckham', price: 30)
>>>>>>> 5ff553609c448f1d5ba2256fc5acc46e12abbb03
car2.user = user
car2.photo.attach(
  io:  File.open(File.join(Rails.root,'app/assets/images/image.png')),
  filename: 'image.jpg'
)
car2.save

<<<<<<< HEAD
car3 = Car.new(model: 'Lamborghini', description: 'fair', location: 'brixton', price: 24)
car3.photo.attach(io: file, filename: "car3.png", content_type: "image/png")
=======
car3 = Car.new(model: 'Lamborghini', description: 'This car is great go for it!', location: 'brixton', price: 24)
>>>>>>> 5ff553609c448f1d5ba2256fc5acc46e12abbb03
car3.user = user
car3.photo.attach(
  io:  File.open(File.join(Rails.root,'app/assets/images/image.png')),
  filename: 'image.jpg'
)
car3.save

puts 'finished'
