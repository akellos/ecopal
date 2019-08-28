# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'

User.destroy_all

if Badge.all.length == 0
  puts "Creating basic badges."
  bronze = Badge.create!(
    milestone: 10,
    title: "Bronze",
    icon: "bronze.png")

  silver = Badge.create!(
    milestone: 30,
    title: "Silver",
    icon: "silver.png")

  gold = Badge.create!(
    milestone: 60,
    title: "Gold",
    icon: "gold.png")
  rookie = Badge.create!(
    milestone: 0,
    title: "Rookie",
    icon: "rookie.png"
  )
  puts "Created basic badges: 'Bronze', 'Silver', 'Gold' and 'Rookie'"
end


puts 'Creating 20 random users...'

20.times do
  User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    image: "https://thispersondoesnotexist.com",
    password: Faker::Internet.password(min_length: 8)
  )
end

puts "Created 20 random users"

puts 'Creating users "Lila", "Evia", "Ahmad" and "Moritz". For each user Email: NAME@mail.com; pw: 654321...'

lila = User.create!(
  name: "Lila",
  email: "lila@mail.com",
  password: "654321",
  image: "https://media.licdn.com/dms/image/C4D03AQHdVHM4w0BcWQ/profile-displayphoto-shrink_800_800/0?e=1571875200&v=beta&t=f2MWy86MWC_-744stDXsk61lcfxak7BUAwIArJ_Tw_M"
)

evia = User.create!(
  name: "Evia",
  email: "evia@mail.com",
  password: "654321",
  image: "https://media.licdn.com/dms/image/C5603AQHTICoQhwGqLQ/profile-displayphoto-shrink_800_800/0?e=1571875200&v=beta&t=V8Cl6Ehq9N9u6UqgEMNjLTrULvXcN9xunKr7HujF9RA"
)

ahmad = User.create!(
  name: "Ahmad",
  email: "ahmad@mail.com",
  password: "654321",
  image: "https://media.licdn.com/dms/image/C5603AQEtT7Jj-y0DUg/profile-displayphoto-shrink_800_800/0?e=1571875200&v=beta&t=DiiHmfRPAMocHGh_Zqrrf4w6vL_PABoXndUO1acCrAk"
)

moritz = User.create!(
  name: "Moritz",
  email: "moritz@mail.com",
  password: "654321",
  image: "https://lindenpartners.eu/wp-content/uploads/2015/03/indenhuck-author.jpg"
)

puts 'Created "Lila", "Evia", "Ahmad" and "Moritz"'

puts "Creating basic challenges: "

plastic_free = Challenge.create!(
  name: "Plastic-free",
  duration: 20,
  description: "Ready to take the Plastic Free challenge? We will help you to keep motivated during the challenge. Users enjoy reading stories from our participants and other news from our global movement. Get the latest plastic-free ideas (don’t worry – we won’t spam you or pass your email address onto anyone else). Together we can make a difference and be a part of the solution.",
  image: "https://images.unsplash.com/flagged/photo-1556667885-a6e05b14f2eb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2100&q=80",
  reward: 100,
  address: "Unit 13, 138 Kingsland Rd, London E2 8DY",
  user: lila
)

stay_dark = Challenge.create!(
  name: "Stay dark",
  duration: 10,
  description: "Try to get by without electricity. That also means: No Netflix!",
  image: "https://images.unsplash.com/photo-1511406361295-0a1ff814c0ce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80",
  reward: 50,
  address: "Rudi-Dutschke-Straße 26, 10969 Berlin, Germany",
  user: moritz
)

stay_dark = Challenge.create!(
  name: "Leave your car at home",
  duration: 30,
  description: "Run, Forrest, Run!",
  image: "https://images.unsplash.com/photo-1501236570302-906143a7c9f8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1567&q=80",
  reward: 200,
  address: "16 Villa Gaudelet, 75011 Paris, France",
  user: ahmad
)


puts "Created basic challenges 'Plastic-free', 'Stay dark' and 'Leave your car at home'"

