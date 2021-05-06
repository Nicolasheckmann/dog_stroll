# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

City.destroy_all
3.times do |i|
  City.create!(city_name: Faker::Nation.capital_city)
  puts "city number #{i+1}"
end


Dog.destroy_all
20.times do |i|
  Dog.create!(name: Faker::App.name, age: rand(1..18), city: City.all.sample)
  puts "dog number #{i+1}"
end

Dogsitter.destroy_all
10.times do |i|
  Dogsitter.create!(name: Faker::Name.name, city: City.all.sample)
  puts "dogsitter number #{i+1}"
end

Stroll.destroy_all
50.times do |i|
  Stroll.create!(date: Faker::Date.between(from: '2014-09-23', to: '2021-09-25'), dog: Dog.all.sample, dogsitter: Dogsitter.all.sample, city: City.all.sample)
  puts "stroll number #{i+1}"
end
