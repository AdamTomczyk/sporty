# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Event.destroy_all

user_1 = User.create!(
  email: "test@joinsporty.com",
  first_name: "Dirk",
  last_name: "Nowitzki",
  password: "123456"
)

user_2 = User.create!(
  email: "may@may.com",
  first_name: "May",
  last_name: "Dang",
  password: "123456"
)

user_3 = User.create!(
  email: "marius@marius.com",
  first_name: "Marius",
  last_name: "Hepp",
  password: "123456"
)

user_4 = User.create!(
  email: "aija@aija.com",
  first_name: "Aija",
  last_name: "Mezapuke",
  password: "123456"
)

user_5 = User.create!(
  email: "adam@adam.com",
  first_name: "Adam",
  last_name: "Tomczyk",
  password: "123456"
)

user_6 = User.create!(
  email: "lebron@lebron.com",
  first_name: "Lebron",
  last_name: "James",
  password: "123456"
)

Event.create!(
  name: "Ball is life. 5 vs 5",
  capacity: 5,
  description: "We are a group of 5 hardcore ballers and are looking for another 5 of whatever-type-you-are ballers.
  I have been a baller since I have come out of my mother's womb, but you don't have to be.
  All skill-levels are welcome 💗 ",
  category: "Basketball",
  location: "Checkpoint Charlie, Berlin",
  skill_level: "I-breathe-this-sport",
  start_time: DateTime.parse("09/01/2021 17:00"),
  end_time: DateTime.parse("09/01/2021 21:00"),
  user_id: user_2.id,
  availability: true
)

# 02

Event.create!(
  name: "Soccer with the gang",
  capacity: 6,
  description: "We are a group of 6 and would like to meet another grouß of six for some soccer.
  Bring some drinks and a towel, because we will get you sweaty ⚽️ ",
  category: "Soccer",
  location: "Fernsehturm, Berlin",
  skill_level: "Beginner",
  start_time: DateTime.parse("09/02/2021 17:00"),
  end_time: DateTime.parse("09/02/2021 21:00"),
  user_id: user_1.id,
  availability: true
)

# 03

Event.create!(
  name: "Tennis",
  capacity: 1,
  description: "Looking for another person to join a tennis match. Let's play!",
  category: "Tennis",
  location: "Brandenburger Tor, Berlin",
  skill_level: "Beginner",
  start_time: DateTime.parse("09/03/2021 17:00"),
  end_time: DateTime.parse("09/03/2021 21:00"),
  user_id: user_3.id,
  availability: true
)

# 04

Event.create!(
  name: "50 people. Extreme Soccer. 25 vs 25",
  capacity: 23,
  description: "We are a group of 27 people in our prime. What better way to
  spend our youth than to do things you've never done before. What's one thing
  you've never done before? I bet you have never played EXTREME SOCCER.
  25 vs 25. One ball. If you like the sound of this and this description got your
  blood pumping, you are the perfect sporty pal we are looking for. GET READY",
  category: "Basketball",
  location: "Tiergarten, Berlin",
  skill_level: "Beginner",
  start_time: DateTime.parse("09/04/2021 17:00"),
  end_time: DateTime.parse("09/04/2021 21:00"),
  user_id: user_5.id,
  availability: true
)

# 05

Event.create!(
  name: "Tennis Newbie interested in learning more",
  capacity: 3,
  description: "Hey guys! I just started with Tennis and am interested in
  learning more. If you too are new into Tennis, are more an intermediate player
  or a pro with a lot of patience, join me! Maybe we can also grab a drink after :)",
  category: "Tennis",
  location: "East Side Gallery, Berlin",
  skill_level: "Beginner",
  start_time: DateTime.parse("09/05/2021 17:00"),
  end_time: DateTime.parse("09/05/2021 21:00"),
  user_id: user_1.id,
  availability: true
)

# 06

Event.create!(
  name: "Kobe 🏀",
  capacity: 10,
  description: "looking for more people to join us for this basketball game. If
  you too think ball is life, join us. ",
  category: "Basketball",
  location: "Boxhagener Platz, Berlin",
  skill_level: "Beginner",
  start_time: DateTime.parse("09/06/2021 17:00"),
  end_time: DateTime.parse("09/06/2021 21:00"),
  user_id: user_1.id,
  availability: true
)

# 07

Event.create!(
  name: "Soccer Season",
  capacity: 8,
  description: "You heard right – it's soccer season! Join us on a quest to play
  Soccer every week for the next 3 months. See ya!",
  category: "Soccer",
  location: "Schillerpark, Berlin",
  skill_level: "This-is-my-hobby",
  start_time: DateTime.parse("09/07/2021 17:00"),
  end_time: DateTime.parse("09/07/2021 21:00"),
  user_id: user_1.id,
  availability: true
)

# 08

Event.create!(
  name: "Tennis at Tempelhofer",
  capacity: 3,
  description: "We are looking for other Tennis players in the area interested
  in Tennis. If you know one Zungenbrecher, you are qualifed, as we are beginners.",
  category: "Tennis",
  location: "Tempelhofer Feld, Berlin",
  skill_level: "Beginner",
  start_time: DateTime.parse("09/08/2021 17:00"),
  end_time: DateTime.parse("09/08/2021 21:00"),
  user_id: user_2.id,
  availability: true
)

# 09

Event.create!(
  name: "We like Soccer. Amen.",
  capacity: 10,
  description: "Like the title says",
  category: "Soccer",
  location: "Monumentenstrasse, Berlin",
  skill_level: "Beginner",
  start_time: DateTime.parse("09/09/2021 17:00"),
  end_time: DateTime.parse("09/09/2021 21:00"),
  user_id: user_1.id,
  availability: true
)

# 10

Event.create!(
  name: "Berlin Basket looking for Berliner Basketball",
  capacity: 4,
  description: "It's time to play some ball. We are mostly playing it as a hobby,
  so if you are interested, you are free to join.",
  category: "Basketball",
  location: "Hauptbahnhof, Berlin",
  skill_level: "Beginner",
  start_time: DateTime.parse("09/10/2021 17:00"),
  end_time: DateTime.parse("09/10/2021 21:00"),
  user_id: user_1.id,
  availability: true
)

# 11

Event.create!(
  name: "Tennis 1 vs 1",
  capacity: 1,
  description: "Looking for one more person to join. Let's play some tennis in the afternoon!",
  category: "Tennis",
  location: "Zoologischer Garten, Berlin",
  skill_level: "Beginner",
  start_time: DateTime.parse("09/11/2021 17:00"),
  end_time: DateTime.parse("09/11/2021 21:00"),
  user_id: user_1.id,
  availability: true
)

# 12

Event.create!(
  name: "Soccer in Neukölln",
  capacity: 10,
  description: "Bring den Fußball",
  category: "Soccer",
  location: "Neukölln, Berlin",
  skill_level: "Beginner",
  start_time: DateTime.parse("09/12/2021 17:00"),
  end_time: DateTime.parse("09/12/2021 21:00"),
  user_id: user_1.id,
  availability: true
)

  #13

  Event.create!(
  name: "Soccer Game @ Neukölln brudi",
  capacity: 10,
  description: "We are a group of 3 guys interested in other players to play soccer with us.
  Bonus points if you bring some snacks",
  category: "Soccer",
  location: "Neukölln, Berlin",
  skill_level: "Beginner",
  start_time: DateTime.parse("09/12/2021 17:00"),
  end_time: DateTime.parse("09/12/2021 21:00"),
  user_id: user_2.id,
  availability: true
)


  # 14

  Event.create!(
  name: "BALL IS LIFE. 5 VS 5",
  capacity: 10,
  description: "If you too are a baller, it's time to unite. Meet up at Görlitzer Park. Bring your fav snack and drinks and get ready to get your ass whopped 😁",
  category: "Basketball",
  location: "Kreuzberg, Berlin",
  skill_level: "I-breathe-this-sport",
  start_time: DateTime.parse("09/12/2021 17:00"),
  end_time: DateTime.parse("10/12/2021 21:00"),
  user_id: user_3.id,
  availability: true
)
