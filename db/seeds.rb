# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# db/seeds.rb
require 'faker'
User.destroy_all
Power.destroy_all
heros = []
humans = []
powers = []

5.times do 
    heros << User.create!(
        email: Faker::Internet.email,
        full_name: Faker::Superhero.name,
        is_hero: true,
        password: 123456
        )
end

heros.each do |hero|
  rand(1..5).times do
    powers << Power.create!(
    name: Faker::Superhero.power,
    short_description: "short description",
    long_description:  "long description",
    price: rand(1..500),
    user: hero
  )
  end
end

5.times do
    humans << User.create!(
        email: Faker::Internet.email,
        full_name: Faker::Name.name,
        is_hero: false,
        password: 123456
        )
end
