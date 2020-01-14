# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

u1 = User.create! name: 'User1', email: 'user1@email.com', password: 'a'
u2 = User.create! name: 'User2', email: 'user2@email.com', password: 'a'
u3 = User.create! name: 'User3', email: 'user3@email.com', password: 'a'
u4 = User.create! name: 'User4', email: 'user4@email.com', password: 'a'


Category.create! title: "Beach", image: "beach.jpg"
Category.create! title: "Adventure", image: "adventure.jpg"
Category.create! title: "Hiking", image: "hiking.jpg"
Category.create! title: "Skiing", image: "skiing.jpg"
Category.create! title: "Travel", image: "travel.jpg"
Category.create! title: "Gaming", image: "gaming.jpg"
Category.create! title: "Biking", image: "biking.jpg"
Category.create! title: "Meditation", image: "meditation.jpg"
