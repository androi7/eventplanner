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
c9 = Category.create! title: "Various", image: "various.jpg"


Event.destroy_all

e1 = Event.create! date: '20/01/2020', location: 'Sydney', title: 'Friendly Soccer Games', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc a lectus molestie, convallis odio vitae, pulvinar urna. Donec purus nibh, sodales sed lacus nec, viverra elementum arcu. Duis lacinia pulvinar nisl ac placerat. Cras vehicula ac turpis vel tempor. Pellentesque venenatis, nibh non pharetra facilisis...', image: 'https://res.cloudinary.com/dqo5zfv4u/image/upload/v1579148148/soccer-event_rku6lw.jpg', album: '', admin: u1.id, category_id: c2.id

e2 = Event.create! date: '24/01/2020', location: 'Melbourne', title: 'Video games party', description: 'Vestibulum ut enim eget lorem luctus maximus ut et erat. In condimentum eleifend molestie. Praesent turpis metus, placerat quis dapibus sed, euismod a dui.', image: 'https://res.cloudinary.com/dqo5zfv4u/image/upload/v1579148147/game-event_pccosp.jpg', album: '', admin: u2, category_id: c6.id

e3 = Event.create! date: '24/03/2020', location: 'Sydney', title: 'Hackaton', description: 'Donec gravida blandit feugiat. Etiam ornare volutpat lacus eget vestibulum. Quisque cursus nec dolor quis tristique. Nam elementum, tellus nec iaculis lobortis, velit tellus cursus eros, vitae ornare quam nisi eu nulla...', image: 'https://res.cloudinary.com/dqo5zfv4u/image/upload/v1579148150/hackaton-event_p4bu04.jpg', album: '', admin: u1, category_id: c2.id

e4 = Event.create! date: '11/02/2020', location: 'Sydney', title: 'Bondi Coastal Walk', description: 'Curabitur faucibus lorem ut iaculis ornare. Nunc a sollicitudin lacus. Fusce convallis, nisi quis finibus tincidunt, lacus leo eleifend diam, eu laoreet metus tortor sit amet metus. Integer blandit at leo ut malesuada. Nam consequat, dui a interdum venenatis, lacus odio accumsan quam, nec bibendum velit leo a urna. In vulputate metus lobortis, convallis tellus vel, posuere odio.', image: 'https://res.cloudinary.com/dqo5zfv4u/image/upload/v1579147922/coastwalk-event_vosv0q.jpg', album: '', admin: u3, category_id: c3.id

e5 = Event.create! date: '18/01/2020', location: 'Sydney', title: 'Sydney Harbour Bridge', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc a lectus molestie, convallis odio vitae, pulvinar urna. Donec purus nibh, sodales sed lacus nec, viverra elementum arcu. Duis lacinia pulvinar nisl ac placerat. Cras vehicula ac turpis vel tempor. Pellentesque venenatis, nibh non pharetra facilisis...', image: 'https://res.cloudinary.com/dqo5zfv4u/image/upload/v1579148146/bridge-event_vbjrzv.jpg', album: '', admin: u2, category_id: c5.id


e1.users << u1 << u2 << u3
e2.users << u1 << u3
e3.users << u1 << u2
