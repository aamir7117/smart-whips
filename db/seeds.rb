# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'wiping db clean'
User.destroy_all
Car.destroy_all

puts 'creating fake records'
user = User.new(email: 'testing123@gmail.com',encrypted_password: 'something_long1234**!', first_name: 'aamir', last_name: 'shaikh', role: 'owner')
user.save
car1 = Car.new(model: 'Tesla', availability: true)
car1.user = user
car1.save
car2 = Car.new(model: 'Ferrari', availability: true)
car2.user = user
car2.save
car3 = Car.new(model: 'Lamborghini', availability: true)
car3.user = user
car3.save
puts 'finished'
