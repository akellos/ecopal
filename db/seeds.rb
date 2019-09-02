# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'

Achievement.destroy_all
# Badge.destroy_all
Tracker.destroy_all
Challenge.destroy_all
Friendship.destroy_all
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
    password: Faker::Internet.password(min_length: 8),
    location: ["London", "Berlin", "Paris", "Manchester", "Madrid", "Glasgow", "Dublin"].sample,
  )
end

puts "Created 20 random users"

puts 'Creating users "Lila", "Evia", "Ahmad" and "Moritz". For each user Email: NAME@mail.com; pw: 654321...'

lila = User.create!(
  name: "Lila",
  email: "lila@mail.com",
  password: "654321",
  image: "https://media.licdn.com/dms/image/C4D03AQHdVHM4w0BcWQ/profile-displayphoto-shrink_800_800/0?e=1571875200&v=beta&t=f2MWy86MWC_-744stDXsk61lcfxak7BUAwIArJ_Tw_M",
  location: "London"
)

evia = User.create!(
  name: "Evia",
  email: "evia@mail.com",
  password: "654321",
  image: "https://media.licdn.com/dms/image/C5603AQHTICoQhwGqLQ/profile-displayphoto-shrink_800_800/0?e=1571875200&v=beta&t=V8Cl6Ehq9N9u6UqgEMNjLTrULvXcN9xunKr7HujF9RA",
  location: "London",
)

ahmad = User.create!(
  name: "Ahmad",
  email: "ahmad@mail.com",
  password: "654321",
  image: "https://media.licdn.com/dms/image/C5603AQEtT7Jj-y0DUg/profile-displayphoto-shrink_800_800/0?e=1571875200&v=beta&t=DiiHmfRPAMocHGh_Zqrrf4w6vL_PABoXndUO1acCrAk",
  location: "Paris",
)

moritz = User.create!(
  name: "Moritz",
  email: "moritz@mail.com",
  password: "654321",
  image: "https://lindenpartners.eu/wp-content/uploads/2015/03/indenhuck-author.jpg",
  location: "Berlin",
)

puts 'Created "Lila", "Evia", "Ahmad" and "Moritz"'



puts "Creating basic challenges:"

plastic_free = Challenge.create!(
  name: "Plastic-free",
  duration: 20,
  description: "Ready to take the Plastic Free challenge? We will help you to keep motivated during the challenge. Users enjoy reading stories from our participants and other news from our global movement. Get the latest plastic-free ideas (don’t worry – we won’t spam you or pass your email address onto anyone else). Together we can make a difference and be a part of the solution.",
  image: "no_plastic.png",
  reward: 100,
  address: "Unit 13, 138 Kingsland Rd, London E2 8DY",
  user: lila
)

stay_dark = Challenge.create!(
  name: "Stay dark",
  duration: 10,
  description: "Try to get by without electricity. That also means: No Netflix!",
  image: "dark.png",
  reward: 50,
  address: "Rudi-Dutschke-Straße 26, 10969 Berlin, Germany",
  user: moritz
)

no_car = Challenge.create!(
  name: "Leave your car at home",
  duration: 30,
  description: "Run, Forrest, Run!",
  image: "bike.png",
  reward: 200,
  address: "16 Villa Gaudelet, 75011 Paris, France",
  user: ahmad
)

five_minute_shower = Challenge.create!(
  name: "Take 5-minute showers",
  duration: 30,
  description: "Save water!",
  image: "shower.png",
  reward: 200,
  address: "16 Villa Gaudelet, 75011 Paris, France",
  user: ahmad
)

watch_documentary = Challenge.create!(
  name: "Watch a documentary",
  duration: 1,
  description: "Watch a documentary about the environment. Our suggestion: 'Blue planet'!",
  image: "tv.png",
  reward: 200,
  address: "16 Villa Gaudelet, 75011 Paris, France",
  user: ahmad
)

reusable_bags = Challenge.create!(
  name: "Ditch plastic bags!",
  duration: 30,
  description: "Ditch plastic bags, use reusable ones!",
  image: "paper_bag.png",
  reward: 200,
  address: "16 Villa Gaudelet, 75011 Paris, France",
  user: ahmad
)

no_meat = Challenge.create!(
  name: "Go vegetarian!",
  duration: 30,
  description: "Replace steak with broccoli!",
  image: "no_meat.png",
  reward: 200,
  address: "16 Villa Gaudelet, 75011 Paris, France",
  user: ahmad
)

attend_lecture = Challenge.create!(
  name: "Attend an event or lecture",
  duration: 1,
  description: "Attend an event or lecture about the environment!",
  image: "lecture.png",
  reward: 200,
  address: "16 Villa Gaudelet, 75011 Paris, France",
  user: ahmad
)

clean_neighborhood = Challenge.create!(
  name: "Clean up your neigbourhood",
  duration: 1,
  description: "Clean up your neighborhood!",
  image: "clean_up.png",
  reward: 200,
  address: "16 Villa Gaudelet, 75011 Paris, France",
  user: ahmad
)

puts "Created basic challenges 'Plastic-free', 'Stay dark' and 'Leave your car at home' and more..."


puts "Creating Users who joined a challenge..."

tom = User.create!(
  name: "Tom",
  email: "tom@mail.com",
  password: "654321",
  image: "https://media.licdn.com/dms/image/C4D03AQHdVHM4w0BcWQ/profile-displayphoto-shrink_800_800/0?e=1571875200&v=beta&t=f2MWy86MWC_-744stDXsk61lcfxak7BUAwIArJ_Tw_M",
  location: "Dublin"
)

luke = User.create!(
  name: "Luke",
  email: "luke@mail.com",
  password: "654321",
  image: "https://media.licdn.com/dms/image/C5603AQHTICoQhwGqLQ/profile-displayphoto-shrink_800_800/0?e=1571875200&v=beta&t=V8Cl6Ehq9N9u6UqgEMNjLTrULvXcN9xunKr7HujF9RA",
  location: "Madrid",
)

sue = User.create!(
  name: "Sue",
  email: "sue@mail.com",
  password: "654321",
  image: "https://media.licdn.com/dms/image/C5603AQEtT7Jj-y0DUg/profile-displayphoto-shrink_800_800/0?e=1571875200&v=beta&t=DiiHmfRPAMocHGh_Zqrrf4w6vL_PABoXndUO1acCrAk",
  location: "Paris",
)

kate = User.create!(
  name: "kate",
  email: "kate@mail.com",
  password: "654321",
  image: "https://images.unsplash.com/photo-1503185912284-5271ff81b9a8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80",
  location: "Berlin",
)

@tracker_users = [sue, luke, tom, moritz, evia, lila, ahmad]
@challenges = [plastic_free, stay_dark, no_car, five_minute_shower, watch_documentary, reusable_bags, no_meat, attend_lecture, clean_neighborhood]

@tracker_users.each do |user|
  @challenges.each do |challenge|
    Tracker.create!(user: user, challenge: challenge)
  end
end

puts "Created basic challenges."

