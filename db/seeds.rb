# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(email: 'david@gmail.com', first_name: 'david', last_name: 'cross', role: 'owner', encrypted_password: '11111')
5.times do
  Car.create(
    model: Faker::Vehicle.make_and_model,
    location: Faker::Address.city,
    price: Faker::Number.between(from: 60, to: 100),
    description: Faker::Lorem.paragraphs
  )
end
