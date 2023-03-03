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
user1 = User.create(username: 'Ivan the Oligarch', email: 'testing123@gmail.com', password: 'testing', first_name: 'ivan', last_name: 'moneybags', role: 'owner')
user2 = User.create(username: 'Aamir the Emir', email: 'testing@gmail.com', password: 'testing', first_name: 'aamir', last_name: 'shaikh', role: 'owner')

users = [user1, user2]

locations = ['Rome', 'London', 'Milan', 'Paris', 'Vienna', 'Madrid', 'Hamburg', 'Frankfurt', 'Bern', 'Glasgow']

# cargallery = ['https://res.cloudinary.com/daaiz4ywy/image/upload/v1677756711/1988_Yugo_GV_in_Blue__front_left_ehggtc.jpg',
#               'https://res.cloudinary.com/daaiz4ywy/image/upload/v1677756711/Lamborghini_Aventador_LP700-4_Orange_grealx.jpg',
#               'https://res.cloudinary.com/daaiz4ywy/image/upload/v1677756709/vehicle_ad_standard_image_71b6cf608f4ca529b2ea72b5f79ec96e_hm3zoa.jpg',
#               'https://res.cloudinary.com/daaiz4ywy/image/upload/v1677756708/asp1140367_m8egu9.jpg',
#               'https://res.cloudinary.com/daaiz4ywy/image/upload/v1677756708/Yugo-11_inga6e.webp',
#               'https://res.cloudinary.com/daaiz4ywy/image/upload/v1677756707/yugo_wide-2475035a4ae05800f100955e7bd7d743f675e049-s1100-c50_gyfczv.jpg',
#               'https://res.cloudinary.com/daaiz4ywy/image/upload/v1677756707/2021_Rolls-Royce_Ghost_review_-3_syfdew.jpg',
#               'https://res.cloudinary.com/daaiz4ywy/image/upload/v1677756706/1961_ferrari_250_gt_swb_cal_spider-003-mh_0_ty84sw.jpg',
#               'https://res.cloudinary.com/daaiz4ywy/image/upload/v1677756706/image-20170221-18630-1g8n1hm_br7d4h.avif',
#               'https://res.cloudinary.com/daaiz4ywy/image/upload/v1677756705/2b0a4a924fe3ce3af22c996f72728d71_aefm0q.jpg',
#               'https://res.cloudinary.com/daaiz4ywy/image/upload/v1677671210/development/4pw8tx9o9khoikh5irya0txeuxf3.avif']

car1 = Car.new(
  model: 'Jaguar XJ',
  description: Faker::Lorem.paragraph(sentence_count: 5, supplemental: true),
  location: locations.shuffle!.pop,
  price: Faker::Number.between(from: 30, to: 100)
)
car1.user = users.sample
car1.photo.attach(
  filename: "car1.jpg",
  io: URI.open('https://www.topgear.com/sites/default/files/news-listicle/image/jaguar_xj_r_sport_003.jpg?w=1654&h=930')
)
car1.save

car2 = Car.new(
  model: 'Porsche Panamera',
  description: Faker::Lorem.paragraph(sentence_count: 5, supplemental: true),
  location: 'Kelvingrove, Glasgow',
  price: Faker::Number.between(from: 30, to: 100)
)
car2.user = users.sample
car2.photo.attach(
  filename: "car2.jpg",
  io: URI.open('https://www.topgear.com/sites/default/files/news-listicle/image/06_063-2.jpg?w=1654&h=930')
)
car2.save

car3 = Car.new(
  model: "Bentley Bentayga",
  description: Faker::Lorem.paragraph(sentence_count: 5, supplemental: true),
  location: 'Milan',
  price: Faker::Number.between(from: 30, to: 100)
)
car3.user = users.sample
car3.photo.attach(
  filename: "car3.jpg",
  io: URI.open('https://www.topgear.com/sites/default/files/news-listicle/image/413extreme-silver-33-1.jpg?w=1654&h=930')
)
car3.save

car4 = Car.new(
  model: "Rolls-Royce Wraith",
  description: Faker::Lorem.paragraph(sentence_count: 5, supplemental: true),
  location: 'Yoker, Glasgow',
  price: Faker::Number.between(from: 30, to: 100)
)
car4.user = users.sample
car4.photo.attach(
  filename: "car4.jpg",
  io: URI.open('https://www.topgear.com/sites/default/files/news-listicle/image/buyers_guide_-_rolls_royce_wraith_2014_-_front_quarter_2.jpg?w=1654&h=930')
)
car4.save

car5 = Car.new(
  model: "BMW 7 Series",
  description: Faker::Lorem.paragraph(sentence_count: 5, supplemental: true),
  location: locations.shuffle!.pop,
  price: Faker::Number.between(from: 30, to: 100)
)
car5.user = users.sample
car5.photo.attach(
  filename: "car5.jpg",
  io: URI.open('https://www.topgear.com/sites/default/files/news-listicle/image/bmw_750li_xdrive_19_0.jpg?w=1654&h=930')
)
car5.save

car6 = Car.new(
  model: "Audi A8",
  description: Faker::Lorem.paragraph(sentence_count: 5, supplemental: true),
  location: locations.shuffle!.pop,
  price: Faker::Number.between(from: 30, to: 100)
)
car6.user = users.sample
car6.photo.attach(
  filename: "car6.jpg",
  io: URI.open('https://www.topgear.com/sites/default/files/news-listicle/image/a80330.jpg?w=1654&h=930')
)
car6.save

car7 = Car.new(
  model: "Bentley Continental GT",
  description: Faker::Lorem.paragraph(sentence_count: 5, supplemental: true),
  location: locations.shuffle!.pop,
  price: Faker::Number.between(from: 30, to: 100)
)
car7.user = users.sample
car7.photo.attach(
  filename: "car7.jpg",
  io: URI.open('https://www.topgear.com/sites/default/files/news-listicle/image/row09068.jpg?w=1654&h=930')
)
car7.save

car8 = Car.new(
  model: "Rolls-Royce Phantom",
  description: Faker::Lorem.paragraph(sentence_count: 5, supplemental: true),
  location: locations.shuffle!.pop,
  price: Faker::Number.between(from: 30, to: 100)
)
car8.user = users.sample
car8.photo.attach(
  filename: "car8.jpg",
  io: URI.open('https://www.topgear.com/sites/default/files/news-listicle/image/_jl58227_0.jpg?w=1654&h=930')
)
car8.save

car9 = Car.new(
  model: "Mercedes-Benz S Class",
  description: Faker::Lorem.paragraph(sentence_count: 5, supplemental: true),
  location: 'Hamburg',
  price: Faker::Number.between(from: 30, to: 100)
)
car9.user = users.sample
car9.photo.attach(
  filename: "car9.jpg",
  io: URI.open('https://www.topgear.com/sites/default/files/news-listicle/image/10702-1.jpg?w=1654&h=930')
)
car9.save

car10 = Car.new(
  model: "Range Rover",
  description: Faker::Lorem.paragraph(sentence_count: 5, supplemental: true),
  location: 'Gorbals, Glasgow',
  price: Faker::Number.between(from: 30, to: 100)
)
car10.user = users.sample
car10.photo.attach(
  filename: "car10.jpg",
  io: URI.open('https://www.topgear.com/sites/default/files/news-listicle/image/rr_swb_phev_006.jpg?w=1654&h=930')
)
car10.save

puts 'finished'
