User.destroy_all
Event.destroy_all

user_1 = User.create!(
  email: "kobe@kobe.com",
  first_name: "Aija",
  last_name: "Mezapuke",
  password: "123456",
  avatar: "kobe.png"
)

user_2 = User.create!(
  email: "may@may.com",
  first_name: "May",
  last_name: "Dang",
  password: "123456",
  avatar: "may.png"
)

user_3 = User.create!(
  email: "marius@marius.com",
  first_name: "Marius",
  last_name: "Hepp",
  password: "123456",
  avatar: "marius.png"
)

user_4 = User.create!(
  email: "aija@aija.com",
  first_name: "Aija",
  last_name: "Mezapuke",
  password: "123456",
  avatar: "aija.png"
)

user_5 = User.create!(
  email: "adam@adam.com",
  first_name: "Adam",
  last_name: "Tomczyk",
  password: "123456",
  avatar: "adam.png"
)

user_6 = User.create!(
  email: "lebron@lebron.com",
  first_name: "Lebron",
  last_name: "James",
  password: "123456",
  avatar: "lebron.png"
)
 # 01

  event_1 = Event.create!(
  name: "Ball is life.",
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

event_2 = Event.create!(
  name: "Soccer w. the gang",
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

event_3 = Event.create!(
  name: "Tennis Tournament",
  capacity: 1,
  description: "Looking for another person to join a tennis match. Let's play!",
  category: "Tennis",
  location: "Brandenburger Tor, Berlin",
  skill_level: "Beginner",
  start_time: DateTime.parse("03/09/2021 17:00"),
  end_time: DateTime.parse("03/09/2021 21:00"),
  user_id: user_3.id,
  availability: true
)

# 04

event_4 = Event.create!(
  name: "Extreme Soccer–25 vs 25",
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

event_5 = Event.create!(
  name: "Tennis Match!",
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

event_6 = Event.create!(
  name: "Kobes 🏀",
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

event_7 = Event.create!(
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

event_8 = Event.create!(
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

event_9 = Event.create!(
  name: "We like Soccer. Amen.",
  capacity: 10,
  description: "Like the title says",
  category: "Soccer",
  location: "Monumentenstrasse, Berlin",
  skill_level: "Beginner",
  start_time: DateTime.parse("10/10/2021 17:00"),
  end_time: DateTime.parse("10/10/2021 21:00"),
  user_id: user_1.id,
  availability: true
)

# 10

event_10 = Event.create!(
  name: "Berliner Basketball",
  capacity: 4,
  description: "It's time to play some ball. We are mostly playing it as a hobby,
  so if you are interested, you are free to join.",
  category: "Basketball",
  location: "Hauptbahnhof, Berlin",
  skill_level: "Beginner",
  start_time: DateTime.parse("11/11/2021 17:00"),
  end_time: DateTime.parse("11/11/2021 21:00"),
  user_id: user_1.id,
  availability: true
)

# 11

event_11 = Event.create!(
  name: "Tennis 1 vs 1",
  capacity: 1,
  description: "Looking for one more person to join. Let's play some tennis in the afternoon!",
  category: "Tennis",
  location: "Zoologischer Garten, Berlin",
  skill_level: "Beginner",
  start_time: DateTime.parse("12/12/2021 17:00"),
  end_time: DateTime.parse("12/12/2021 21:00"),
  user_id: user_1.id,
  availability: true
)

# 12

event_12 = Event.create!(
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

  # 13

event_13 = Event.create!(
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

event_14 = Event.create!(
  name: "BALL IS LIFE. 5 VS 5",
  capacity: 10,
  description: "If you too are a baller, it's time to unite. Meet up at Görlitzer Park. Bring your fav snack and drinks and get ready to get your ass whopped 😁",
  category: "Basketball",
  location: "Kreuzberg, Berlin",
  skill_level: "I-breathe-this-sport",
  start_time: DateTime.parse("10/12/2021 17:00"),
  end_time: DateTime.parse("10/12/2021 21:00"),
  user_id: user_3.id,
  availability: true
  )

  # 15

event_15 = Event.create!(
  name: "Steglitz Ballers",
  capacity: 5,
  description: "Let's play some basketball",
  category: "Basketball",
  location: "Steglitz, Berlin",
  skill_level: "Beginner",
  start_time: DateTime.parse("07/07/2021 17:00"),
  end_time: DateTime.parse("07/07/2021 21:00"),
  user_id: user_2.id,
  availability: true
)
  # 16

event_16 = Event.create!(
  name: "Soccer is life",
  capacity: 6,
  description: "Let's score some balls! See you soccer lovers, lets catch some good vibes while enjoying our fav sports! 😁",
  category: "Soccer",
  location: "Spandau, Berlin",
  skill_level: "I-breathe-this-sport",
  start_time: DateTime.parse("06/06/2021 13:00"),
  end_time: DateTime.parse("06/06/2021 17:00"),
  user_id: user_3.id,
  availability: true
  )

  # 17

event_17 = Event.create!(
  name: "Let's play Tennis!",
  capacity: 4,
  description: "Let's score some balls! See you soccer lovers, lets catch some good vibes while enjoying our fav sports! 😁",
  category: "Tennis",
  location: "Mitte, Berlin",
  skill_level: "I-breathe-this-sport",
  start_time: DateTime.parse("05/03/2021 13:00"),
  end_time: DateTime.parse("05/03/2021 17:00"),
  user_id: user_1.id,
  availability: true
  )

  # 18

event_18 = Event.create!(
  name: "Tennis with Kobe!",
  capacity: 4,
  description: "I'm brand new to tennis, maybe will swap my careers! 😁",
  category: "Tennis",
  location: "Marzan, Berlin",
  skill_level: "I-breathe-this-sport",
  start_time: DateTime.parse("04/03/2021 15:00"),
  end_time: DateTime.parse("04/03/2021 18:00"),
  user_id: user_6.id,
  availability: true
  )

  # 19

event_19 = Event.create!(
  name: "Tennis with Adam no Eve!",
  capacity: 4,
  description: "I breath tennis, I dream about it, I love it! Tennis is life 😁",
  category: "Tennis",
  location: "Marzan, Berlin",
  skill_level: "I-breathe-this-sport",
  start_time: DateTime.parse("05/05/2021 16:00"),
  end_time: DateTime.parse("05/05/2021 18:00"),
  user_id: user_5.id,
  availability: true
)

    # 01

join_request_1 = JoinRequest.create!(
  skill_level: "I-breathe-this-sport",
  user_id: user_1.id,
  event: event_3,
  status: 1
)
    # 02

join_request_2 = JoinRequest.create!(
  skill_level: "Beginner",
  user_id: user_2.id,
  event: event_2 ,
  status: 1
)
    # 03

join_request_3 = JoinRequest.create!(
  skill_level: "I-breathe-this-sport",
  user_id: user_3.id,
  event: event_1,
  status: 1
)
    # 04

join_request_4 = JoinRequest.create!(
  skill_level: "This-is-my-hobby",
  user_id: user_5.id,
  event: event_14,
  status: 1
)
    # 05

join_request_5 = JoinRequest.create!(
  skill_level: "Beginner",
  user_id: user_2.id,
  event: event_10,
  status: 0
)
    # 06

join_request_6 = JoinRequest.create!(
  skill_level: "Beginner",
  user_id: user_3.id,
  event:  event_11,
  status: 1
)
    # 07

join_request_7 = JoinRequest.create!(
  skill_level: "I-breathe-this-sport",
  user_id: user_2.id,
  event: event_6,
  status: 0
)
    # 08

join_request_8 = JoinRequest.create!(
  skill_level: "Beginner",
  user_id: user_1.id,
  event: event_17,
  status: 1
)
    # 09

join_request_9 = JoinRequest.create!(
  skill_level: "Beginner",
  user_id: user_1.id,
  event: event_15,
  status: 0
)
    # 10

join_request_10 = JoinRequest.create!(
  skill_level: "This-is-my-hobby",
  user_id: user_4.id,
  event: event_5,
  status: 1
)
    # 11

join_request_11 = JoinRequest.create!(
  skill_level: "I-breathe-this-sport",
  user_id: user_4.id,
  event: event_8,
  status: 1
)
     # 12

join_request_12 = JoinRequest.create!(
  skill_level: "This-is-my-hobby",
  user_id: user_3.id,
  event: event_16,
  status: 1
)
