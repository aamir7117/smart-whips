require 'uri'
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

cargallery = ['https://res.cloudinary.com/daaiz4ywy/image/upload/v1677756711/1988_Yugo_GV_in_Blue__front_left_ehggtc.jpg',
              'https://res.cloudinary.com/daaiz4ywy/image/upload/v1677756711/Lamborghini_Aventador_LP700-4_Orange_grealx.jpg',
              'https://res.cloudinary.com/daaiz4ywy/image/upload/v1677756709/vehicle_ad_standard_image_71b6cf608f4ca529b2ea72b5f79ec96e_hm3zoa.jpg',
              'https://res.cloudinary.com/daaiz4ywy/image/upload/v1677756708/asp1140367_m8egu9.jpg',
              'https://res.cloudinary.com/daaiz4ywy/image/upload/v1677756708/Yugo-11_inga6e.webp',
              'https://res.cloudinary.com/daaiz4ywy/image/upload/v1677756707/yugo_wide-2475035a4ae05800f100955e7bd7d743f675e049-s1100-c50_gyfczv.jpg',
              'https://res.cloudinary.com/daaiz4ywy/image/upload/v1677756707/2021_Rolls-Royce_Ghost_review_-3_syfdew.jpg',
              'https://res.cloudinary.com/daaiz4ywy/image/upload/v1677756706/1961_ferrari_250_gt_swb_cal_spider-003-mh_0_ty84sw.jpg',
              'https://res.cloudinary.com/daaiz4ywy/image/upload/v1677756706/image-20170221-18630-1g8n1hm_br7d4h.avif',
              'https://res.cloudinary.com/daaiz4ywy/image/upload/v1677756705/2b0a4a924fe3ce3af22c996f72728d71_aefm0q.jpg',
              'https://res.cloudinary.com/daaiz4ywy/image/upload/v1677671210/development/4pw8tx9o9khoikh5irya0txeuxf3.avif']

10.times do |i|
  car = Car.new(
    model: Faker::Vehicle.make_and_model,
    description: Faker::Lorem.paragraph(sentence_count: 5, supplemental: true),
    location: Faker::Address.city,
    price: Faker::Number.between(from: 30, to: 100)
  )
  car.user = user
  car.photo.attach(
    filename: "car#{i}.jpg",
    io: URI.open(cargallery.shuffle!.pop)
  )
  car.save
end

puts 'finished'
