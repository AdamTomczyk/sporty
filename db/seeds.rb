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
  fullname: "123",
  password: "123"
)

# 01

Event.create!(
  name: "First Test Event",
  capacity: "10",
  description: "First Test Description",
  category: "Basketball",
  location: "Checkpoint Charlie, Berlin",
  skill_level: "Beginner",
  start_time: 10000000,
  end_time: 20000000,
  user_id: user_1.id,
  availability: true,
)

# 02

Event.create!(
  name: "Second Test Event",
  capacity: "10",
  description: "Second Test Description",
  category: "Basketball",
  location: "Checkpoint Charlie, Berlin",
  skill_level: "Beginner",
  start_time: 10000000,
  end_time: 20000000,
  user_id: user_1.id,
  availability: true,
)

# 03

Event.create!(
  name: "Third Test Event",
  capacity: "10",
  description: "Third Test Description",
  category: "Basketball",
  location: "Checkpoint Charlie, Berlin",
  skill_level: "Beginner",
  start_time: 10000000,
  end_time: 20000000,
  user_id: user_1.id,
  availability: true,
)

# 04

Event.create!(
  name: "Fourth Test Event",
  capacity: "10",
  description: "Fourth Test Description",
  category: "Basketball",
  location: "Checkpoint Charlie, Berlin",
  skill_level: "Beginner",
  start_time: 10000000,
  end_time: 20000000,
  user_id: user_1.id,
  availability: true,
)

# 05

Event.create!(
  name: "Fifth Test Event",
  capacity: "10",
  description: "Fifth Test Description",
  category: "Basketball",
  location: "Checkpoint Charlie, Berlin",
  skill_level: "Beginner",
  start_time: 10000000,
  end_time: 20000000,
  user_id: user_1.id,
  availability: true,
)

# 06

Event.create!(
  name: "Sixth Test Event",
  capacity: "10",
  description: "Sixth Test Description",
  category: "Basketball",
  location: "Checkpoint Charlie, Berlin",
  skill_level: "Beginner",
  start_time: 10000000,
  end_time: 20000000,
  user_id: user_1.id,
  availability: true,
)

# 07

Event.create!(
  name: "Seventh Test Event",
  capacity: "10",
  description: "Seventh Test Description",
  category: "Basketball",
  location: "Checkpoint Charlie, Berlin",
  skill_level: "Beginner",
  start_time: 10000000,
  end_time: 20000000,
  user_id: user_1.id,
  availability: true,
)

# 08

Event.create!(
  name: "Eighth Test Event",
  capacity: "10",
  description: "Eigth Test Description",
  category: "Basketball",
  location: "Checkpoint Charlie, Berlin",
  skill_level: "Beginner",
  start_time: 10000000,
  end_time: 20000000,
  user_id: user_1.id,
  availability: true,
)

# 09

Event.create!(
  name: "Nineth Test Event",
  capacity: "10",
  description: "Nineth Test Description",
  category: "Basketball",
  location: "Checkpoint Charlie, Berlin",
  skill_level: "Beginner",
  start_time: 10000000,
  end_time: 20000000,
  user_id: user_1.id,
  availability: true,
)

# 10

Event.create!(
  name: "Tenth Test Event",
  capacity: "10",
  description: "Tenth Test Description",
  category: "Basketball",
  location: "Checkpoint Charlie, Berlin",
  skill_level: "Beginner",
  start_time: 10000000,
  end_time: 20000000,
  user_id: user_1.id,
  availability: true,
)

# 11

Event.create!(
  name: "Eleventh Test Event",
  capacity: "10",
  description: "Eleventh Test Description",
  category: "Basketball",
  location: "Checkpoint Charlie, Berlin",
  skill_level: "Beginner",
  start_time: 10000000,
  end_time: 20000000,
  user_id: user_1.id,
  availability: true,
)

# 12

Event.create!(
  name: "Twelveth Test Event",
  capacity: "10",
  description: "Twelveth Test Description",
  category: "Basketball",
  location: "Checkpoint Charlie, Berlin",
  skill_level: "Beginner",
  start_time: 10000000,
  end_time: 20000000,
  user_id: user_1.id,
  availability: true,
)
