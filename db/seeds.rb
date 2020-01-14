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


Category.destroy_all

c1 = Category.create! title: "Beach", image: "beach.jpg"
c2 = Category.create! title: "Adventure", image: "adventure.jpg"
c3 = Category.create! title: "Hiking", image: "hiking.jpg"
c4 = Category.create! title: "Skiing", image: "skiing.jpg"
c5 = Category.create! title: "Travel", image: "travel.jpg"
c6 = Category.create! title: "Gaming", image: "gaming.jpg"
c7 = Category.create! title: "Biking", image: "biking.jpg"
c8 = Category.create! title: "Meditation", image: "meditation.jpg"


Event.destroy_all

e1 = Event.create! date: '2020-01-20', location: 'Sydney', title: 'Friendly Soccer Games', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc a lectus molestie, convallis odio vitae, pulvinar urna. Donec purus nibh, sodales sed lacus nec, viverra elementum arcu. Duis lacinia pulvinar nisl ac placerat. Cras vehicula ac turpis vel tempor. Pellentesque venenatis, nibh non pharetra facilisis...', image: 'soccer-event.jpg', album: '', admin: u1, category_id: c2.id
e2 = Event.create! date: '2020-01-24', location: 'Melbourne', title: 'Video games party', description: 'Vestibulum ut enim eget lorem luctus maximus ut et erat. In condimentum eleifend molestie. Praesent turpis metus, placerat quis dapibus sed, euismod a dui.', image: 'game-event.jpg', album: '', admin: u2, category_id: c6.id
e3 = Event.create! date: '2020-03-24', location: 'Sydney', title: 'Hackaton', description: 'Donec gravida blandit feugiat. Etiam ornare volutpat lacus eget vestibulum. Quisque cursus nec dolor quis tristique. Nam elementum, tellus nec iaculis lobortis, velit tellus cursus eros, vitae ornare quam nisi eu nulla...', image: 'hackaton-event.jpg', album: '', admin: u1, category_id: c2.id
e4 = Event.create! date: '2020-02-11', location: 'Sydney', title: 'Bondi Coastal Walk', description: 'Curabitur faucibus lorem ut iaculis ornare. Nunc a sollicitudin lacus. Fusce convallis, nisi quis finibus tincidunt, lacus leo eleifend diam, eu laoreet metus tortor sit amet metus. Integer blandit at leo ut malesuada. Nam consequat, dui a interdum venenatis, lacus odio accumsan quam, nec bibendum velit leo a urna. In vulputate metus lobortis, convallis tellus vel, posuere odio.', image: 'coastwalk-event.jpg', album: '', admin: u3, category_id: c3.id
e5 = Event.create! date: '2020-01-18', location: 'Sydney', title: 'Sydney Harbour Bridge', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc a lectus molestie, convallis odio vitae, pulvinar urna. Donec purus nibh, sodales sed lacus nec, viverra elementum arcu. Duis lacinia pulvinar nisl ac placerat. Cras vehicula ac turpis vel tempor. Pellentesque venenatis, nibh non pharetra facilisis...', image: 'bridge-event.jpg', album: '', admin: u2, category_id: c5.id
