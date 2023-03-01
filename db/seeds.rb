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
user = User.new( username: 'testman', email: 'testing123@gmail.com', password: 'testing', first_name: 'aamir', last_name: 'shaikh', role: 'owner')
user.save

car1 = Car.new(model: 'Tesla', description: 'good', location: 'newham', price: 45)
car1.user = user
# debugger
car1.photo.attach(
  io:  File.open(File.join(Rails.root,'app/assets/images/image.png')),
  filename: 'image.jpg'
)
car1.save

car2 = Car.new(model: 'Ferrari', description: 'bad', location: 'peckham', price: 30)
car2.user = user
car2.photo.attach(
  io:  File.open(File.join(Rails.root,'app/assets/images/image.png')),
  filename: 'image.jpg'
)
car2.save

car3 = Car.new(model: 'Lamborghini', description: 'fair', location: 'brixton', price: 24)
car3.user = user
car3.photo.attach(
  io:  File.open(File.join(Rails.root,'app/assets/images/image.png')),
  filename: 'image.jpg'
)
car3.save


10.times do
  Car.new(
    model: ,
    description: ,
    location: ,
    price: ,
  )
end
Car.each do |car|
  car.user = user
  car.photo.attach(
    io: File.open(File.join(Rails.root, 'app/assets/images/image.png')),
    filename: 'image.jpg'
  )
end
puts 'finished'
