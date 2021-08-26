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
  first_name: "test",
  last_name: "test",
  password: "123456"
)

user_2 = User.create!(
  email: "may@may.com",
  first_name: "may",
  last_name: "dang",
  password: "123456"
)

# 01

Event.create!(
  name: "Test Event 01",
  capacity: 10,
  description: "First Test Description",
  category: "Basketball",
  location: "Checkpoint Charlie, Berlin",
  skill_level: "Beginner",
  start_time: DateTime.parse("09/01/2021 17:00"),
  end_time: DateTime.parse("09/01/2021 21:00"),
  user_id: user_2.id,
  availability: true
)

# 02

Event.create!(
  name: "Test Event 02",
  capacity: 10,
  description: "Second Test Description",
  category: "Tennis",
  location: "Fernsehturm, Berlin",
  skill_level: "Beginner",
  start_time: DateTime.parse("09/02/2021 17:00"),
  end_time: DateTime.parse("09/02/2021 21:00"),
  user_id: user_1.id,
  availability: true
)

# 03

Event.create!(
  name: "Test Event 03",
  capacity: 10,
  description: "Third Test Description",
  category: "Soccer",
  location: "Brandenburger Tor, Berlin",
  skill_level: "Beginner",
  start_time: DateTime.parse("09/03/2021 17:00"),
  end_time: DateTime.parse("09/03/2021 21:00"),
  user_id: user_1.id,
  availability: true
)

# 04

Event.create!(
  name: "Test Event 04",
  capacity: 10,
  description: "Fourth Test Description",
  category: "Basketball",
  location: "Tiergarten, Berlin",
  skill_level: "Beginner",
  start_time: DateTime.parse("09/04/2021 17:00"),
  end_time: DateTime.parse("09/04/2021 21:00"),
  user_id: user_1.id,
  availability: true
)

# 05

Event.create!(
  name: "Test Event 05",
  capacity: 10,
  description: "Fifth Test Description",
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
  name: "Test Event 06",
  capacity: 10,
  description: "Sixth Test Description",
  category: "Soccer",
  location: "Boxhagener Platz, Berlin",
  skill_level: "Beginner",
  start_time: DateTime.parse("09/06/2021 17:00"),
  end_time: DateTime.parse("09/06/2021 21:00"),
  user_id: user_1.id,
  availability: true
)

# 07

Event.create!(
  name: "Test Event 07",
  capacity: 10,
  description: "Seventh Test Description",
  category: "Basketball",
  location: "Schillerpark, Berlin",
  skill_level: "Beginner",
  start_time: DateTime.parse("09/07/2021 17:00"),
  end_time: DateTime.parse("09/07/2021 21:00"),
  user_id: user_1.id,
  availability: true
)

# 08

Event.create!(
  name: "Test Event 08",
  capacity: 10,
  description: "Eigth Test Description",
  category: "Tennis",
  location: "Tempelhofer Feld, Berlin",
  skill_level: "Beginner",
  start_time: DateTime.parse("09/08/2021 17:00"),
  end_time: DateTime.parse("09/08/2021 21:00"),
  user_id: user_1.id,
  availability: true
)

# 09

Event.create!(
  name: "Test Event 09",
  capacity: 10,
  description: "Nineth Test Description",
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
  name: "Test Event 10",
  capacity: 10,
  description: "Tenth Test Description",
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
  name: "Test Event 11",
  capacity: 10,
  description: "Eleventh Test Description",
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
  name: "Test Event 12",
  capacity: 10,
  description: "Twelveth Test Description",
  category: "Soccer",
  location: "Neukölln, Berlin",
  skill_level: "Beginner",
  start_time: DateTime.parse("09/12/2021 17:00"),
  end_time: DateTime.parse("09/12/2021 21:00"),
  user_id: user_1.id,
  availability: true

)
