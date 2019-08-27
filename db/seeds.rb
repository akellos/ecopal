# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Badge.all.length == 0
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
  nothing = Badge.create!(
    milestone: 0,
    title: "Newcomer",
    icon: "newcomer.png"
  )
end


puts 'Cleaning database...'

User.destroy_all

puts 'Creating 20 random users...'

20.times do
  User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    image: "https://thispersondoesnotexist.com",
    password: Faker::Internet.password(min_length: 8)
  )
end

first_review_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://images.unsplash.com/photo-1517810095498-0f282469aba9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
  )

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

