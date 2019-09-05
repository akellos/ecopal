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
    milestone: 400,
    title: "Bronze",
    icon: "bronze.png")

  silver = Badge.create!(
    milestone: 800,
    title: "Silver",
    icon: "silver.png")

  gold = Badge.create!(
    milestone: 1600,
    title: "Gold",
    icon: "gold.png")
  rookie = Badge.create!(
    milestone: 100,
    title: "Rookie",
    icon: "rookie.png"
  )
  puts "Created basic badges: 'Bronze', 'Silver', 'Gold' and 'Rookie'"
end


# puts 'Creating 20 random users...'

# 20.times do
#   User.create!(
#     name: Faker::Name.name,
#     email: Faker::Internet.email,
#     image: "https://thispersondoesnotexist.com",
#     password: Faker::Internet.password(min_length: 8),
#     location: ["London", "Berlin", "Paris", "Manchester", "Madrid", "Glasgow", "Dublin"].sample,
#   )
# end

# puts "Created 20 random users"


puts "Creating users from Le Wagon batch 287..."


lila = User.create!(
  name: "Lila",
  email: "lila@mail.com",
  password: "654321",
  image: "https://media.licdn.com/dms/image/C4D03AQHdVHM4w0BcWQ/profile-displayphoto-shrink_800_800/0?e=1571875200&v=beta&t=f2MWy86MWC_-744stDXsk61lcfxak7BUAwIArJ_Tw_M",
  location: "London",
  score: 300,
  bio: "Hi everyone! I am on the exciting journey to save the planet. Add me to your friends' list, and let's see who will get more points!"

)

evia = User.create!(
  name: "Evia",
  email: "evia@mail.com",
  password: "654321",
  image: "https://avatars0.githubusercontent.com/u/51849597?v=4",
  location: "London",
  score: 500,
  bio: "Hi everyone! I am on the exciting journey to save the planet. Add me to your friends' list, and let's see who will get more points!"
)

moritz = User.create!(
  name: "Moritz",
  email: "moritz@mail.com",
  password: "654321",
  image: "https://lindenpartners.eu/wp-content/uploads/2015/03/indenhuck-author.jpg",
  location: "Berlin",
  score: 150,
  bio: "Hi everyone! I am on the exciting journey to save the planet. Add me to your friends' list, and let's see who will get more points!"
)

ahmad = User.create!(
  name: "Ahmad",
  email: "ahmad@mail.com",
  password: "654321",
  image: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/zw9ntx1j7adcbaw3v38n.jpg",
  location: "London",
  score: 450,
  bio: "Hi everyone! I am on the exciting journey to save the planet. Add me to your friends' list, and let's see who will get more points!"
  )

alan = User.create!(
  name: "Alan",
  email: "alan@mail.com",
  password: "654321",
  image: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/atgnhlqe9ctxehyqrvnz.jpg",
  location: "London",
  score: 650,
  bio: "Hi everyone! I am on the exciting journey to save the planet. Add me to your friends' list, and let's see who will get more points!"
  )

alexandre = User.create!(
  name: "Alexandre",
  email: "alexandre@mail.com",
  password: "654321",
  image: "https://avatars1.githubusercontent.com/u/12947956?v=4",
  location: "Paris",
  score: 100,
  bio: "Hi everyone! I am on the exciting journey to save the planet. Add me to your friends' list, and let's see who will get more points!"
  )

ali = User.create!(
  name: "Ali",
  email: "ali@mail.com",
  password: "654321",
  image: "https://avatars0.githubusercontent.com/u/40044444?v=4",
  location: "London",
  score: 800,
  bio: "Hi everyone! I am on the exciting journey to save the planet. Add me to your friends' list, and let's see who will get more points!"
  )

andreea = User.create!(
  name: "Andreea",
  email: "andreea@mail.com",
  password: "654321",
  image: "https://avatars1.githubusercontent.com/u/41266044?v=4",
  location: "London",
  score: 300,
  bio: "Hi everyone! I am on the exciting journey to save the planet. Add me to your friends' list, and let's see who will get more points!"
  )

ben = User.create!(
  name: "Ben",
  email: "ben@mail.com",
  password: "654321",
  image: "https://avatars2.githubusercontent.com/u/51165509?v=4",
  location: "London",
  score: 700,
  bio: "Hi everyone! I am on the exciting journey to save the planet. Add me to your friends' list, and let's see who will get more points!"
  )

benoit = User.create!(
  name: "Benoit",
  email: "benoit@mail.com",
  password: "654321",
  image: "https://avatars0.githubusercontent.com/u/48032707?v=4",
  location: "Paris",
  score: 1000,
  bio: "Hi everyone! I am on the exciting journey to save the planet. Add me to your friends' list, and let's see who will get more points!"
  )

charles = User.create!(
  name: "Charles",
  email: "charles@mail.com",
  password: "654321",
  image: "https://avatars2.githubusercontent.com/u/51698491?v=4",
  location: "Paris",
  score: 700,
  bio: "Hi everyone! I am on the exciting journey to save the planet. Add me to your friends' list, and let's see who will get more points!"
  )


demi = User.create!(
  name: "Demi",
  email: "demi@mail.com",
  password: "654321",
  image: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/jx8ks6pvdcp7ydqyg1kd.jpg",
  location: "London",
  score: 900,
  bio: "Hi everyone! I am on the exciting journey to save the planet. Add me to your friends' list, and let's see who will get more points!"
  )

dima = User.create!(
  name: "Dima",
  email: "dima@mail.com",
  password: "654321",
  image: "https://avatars0.githubusercontent.com/u/45913976?v=4",
  location: "Kiev",
  score: 500,
  bio: "Hi everyone! I am on the exciting journey to save the planet. Add me to your friends' list, and let's see who will get more points!"
  )

dumitru = User.create!(
  name: "Dumitru",
  email: "dumitru@mail.com",
  password: "654321",
  image: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/jx51bsw0dyfx3ln2mf1v.jpg",
  location: "Bucharest",
  score: 600,
  bio: "Hi everyone! I am on the exciting journey to save the planet. Add me to your friends' list, and let's see who will get more points!"
  )

ekrem = User.create!(
  name: "Ekrem",
  email: "ekrem@mail.com",
  password: "654321",
  image: "https://avatars3.githubusercontent.com/u/21100338?v=4",
  location: "Ilidža",
  score: 1200,
  bio: "Hi everyone! I am on the exciting journey to save the planet. Add me to your friends' list, and let's see who will get more points!"
  )

ellen = User.create!(
  name: "Ellen",
  email: "ellen@mail.com",
  password: "654321",
  image: "https://avatars2.githubusercontent.com/u/46422023?v=4",
  location: "London",
  score: 500,
  bio: "Hi everyone! I am on the exciting journey to save the planet. Add me to your friends' list, and let's see who will get more points!"
  )


evelina = User.create!(
  name: "Evelina",
  email: "evelina@mail.com",
  password: "654321",
  image: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/rmq8yrhbwtoeqcu9jax7.jpg",
  location: "Lund",
  score: 700,
  bio: "Hi everyone! I am on the exciting journey to save the planet. Add me to your friends' list, and let's see who will get more points!"
  )

francesca = User.create!(
  name: "Francesca",
  email: "francesca@mail.com",
  password: "654321",
  image: "https://avatars2.githubusercontent.com/u/46482293?v=4",
  location: "Rome",
  score: 1100,
  bio: "Hi everyone! I am on the exciting journey to save the planet. Add me to your friends' list, and let's see who will get more points!"
  )

george = User.create!(
  name: "George",
  email: "george@mail.com",
  password: "654321",
  image: "https://avatars3.githubusercontent.com/u/52655562?v=4",
  location: "Liverpool",
  score: 1500,
  bio: "Hi everyone! I am on the exciting journey to save the planet. Add me to your friends' list, and let's see who will get more points!"
  )


ghita = User.create!(
  name: "Ghita",
  email: "ghita@mail.com",
  password: "654321",
  image: "https://avatars0.githubusercontent.com/u/51849057?v=4",
  location: "Marrakesh",
  score: 500,
  bio: "Hi everyone! I am on the exciting journey to save the planet. Add me to your friends' list, and let's see who will get more points!"
  )

joe = User.create!(
  name: "Joe",
  email: "joe@mail.com",
  password: "654321",
  image: "https://avatars2.githubusercontent.com/u/46495783?v=4",
  location: "Birmingham",
  score: 350,
  bio: "Hi everyone! I am on the exciting journey to save the planet. Add me to your friends' list, and let's see who will get more points!"
  )

julien = User.create!(
  name: "Julien",
  email: "julien@mail.com",
  password: "654321",
  image: "https://avatars2.githubusercontent.com/u/46495783?v=4",
  location: "Birmingham",
  score: 200,
  bio: "Hi everyone! I am on the exciting journey to save the planet. Add me to your friends' list, and let's see who will get more points!"
  )

loki = User.create!(
  name: "Loki",
  email: "loki@mail.com",
  password: "654321",
  image: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/klgxdyrlwwljeclq8zkv.jpg",
  location: "Edinburgh",
  score: 900,
  bio: "Hi everyone! I am on the exciting journey to save the planet. Add me to your friends' list, and let's see who will get more points!"
  )

marc = User.create!(
  name: "Marc",
  email: "marc@mail.com",
  password: "654321",
  image: "https://avatars1.githubusercontent.com/u/49941024?v=4",
  location: "Newcastle",
  score: 100,
  bio: "Hi everyone! I am on the exciting journey to save the planet. Add me to your friends' list, and let's see who will get more points!"
  )


mark = User.create!(
  name: "Mark",
  email: "mark@mail.com",
  password: "654321",
  image: "https://avatars3.githubusercontent.com/u/50900064?v=4",
  location: "Grinnell",
  score: 900,
  bio: "Hi everyone! I am on the exciting journey to save the planet. Add me to your friends' list, and let's see who will get more points!"
  )

matt = User.create!(
  name: "Matt",
  email: "matt@mail.com",
  password: "654321",
  image: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/f3fd2uzo6xk5wgd16ggv.jpg",
  location: "London",
  score: 450,
  bio: "Hi everyone! I am on the exciting journey to save the planet. Add me to your friends' list, and let's see who will get more points!"
  )


matthew = User.create!(
  name: "Matthew",
  email: "matthew@mail.com",
  password: "654321",
  image: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/dzuiean6ucwltxgma7hb.jpg",
  location: "Sydney",
  score: 750,
  bio: "Hi everyone! I am on the exciting journey to save the planet. Add me to your friends' list, and let's see who will get more points!"
  )


melissa = User.create!(
  name: "Melissa",
  email: "melissa@mail.com",
  password: "654321",
  image: "https://avatars3.githubusercontent.com/u/51149885?v=4",
  location: "Maui",
  score: 800,
  bio: "Hi everyone! I am on the exciting journey to save the planet. Add me to your friends' list, and let's see who will get more points!"
  )

mohammad = User.create!(
  name: "Mohammad",
  email: "mohammad@mail.com",
  password: "654321",
  image: "https://avatars0.githubusercontent.com/u/52111813?v=4",
  location: "Glasgow",
  score: 900,
  bio: "Hi everyone! I am on the exciting journey to save the planet. Add me to your friends' list, and let's see who will get more points!"
  )

nicholas = User.create!(
  name: "Nicholas",
  email: "nicholas@mail.com",
  password: "654321",
  image: "https://avatars2.githubusercontent.com/u/36858901?v=4",
  location: "Bristol",
  score: 400,
  bio: "Hi everyone! I am on the exciting journey to save the planet. Add me to your friends' list, and let's see who will get more points!"
  )

paul = User.create!(
  name: "Paul",
  email: "paul@mail.com",
  password: "654321",
  image: "https://avatars1.githubusercontent.com/u/42438530?v=4",
  location: "Paris",
  score: 500,
  bio: "Hi everyone! I am on the exciting journey to save the planet. Add me to your friends' list, and let's see who will get more points!"
  )

raquel = User.create!(
  name: "Raquel",
  email: "raquel@mail.com",
  password: "654321",
  image: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/nuxxr14dbrgg2xnipykv.jpg",
  location: "Rio de Janeiro",
  score: 900,
  bio: "Hi everyone! I am on the exciting journey to save the planet. Add me to your friends' list, and let's see who will get more points!"
  )

rokas = User.create!(
  name: "Rokas",
  email: "rokas@mail.com",
  password: "654321",
  image: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/gvhonnaqlihxz3k5tolo.jpg",
  location: "Vilnius",
  score: 750,
  bio: "Hi everyone! I am on the exciting journey to save the planet. Add me to your friends' list, and let's see who will get more points!"
  )

stanislas = User.create!(
  name: "Stanislas",
  email: "stanislas@mail.com",
  password: "654321",
  image: "https://avatars1.githubusercontent.com/u/52372052?v=4",
  location: "Lyon",
  score: 500,
  bio: "Hi everyone! I am on the exciting journey to save the planet. Add me to your friends' list, and let's see who will get more points!"
  )

susan = User.create!(
  name: "Susan",
  email: "susan@mail.com",
  password: "654321",
  image: "https://avatars3.githubusercontent.com/u/47369528?v=4",
  location: "Texas",
  score: 1100,
  bio: "Hi everyone! I am on the exciting journey to save the planet. Add me to your friends' list, and let's see who will get more points!"
  )

terri = User.create!(
  name: "Terri",
  email: "terri@mail.com",
  password: "654321",
  image: "https://avatars3.githubusercontent.com/u/47704923?v=4",
  location: "Dublin",
  score: 800,
  bio: "Hi everyone! I am on the exciting journey to save the planet. Add me to your friends' list, and let's see who will get more points!"
  )

thomas = User.create!(
  name: "Thomas",
  email: "thomas@mail.com",
  password: "654321",
  image: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/dmi6oplon6pscpbxfh6a.jpg",
  location: "Berlin",
  score: 600,
  bio: "Hi everyone! I am on the exciting journey to save the planet. Add me to your friends' list, and let's see who will get more points!"
  )

viktor = User.create!(
  name: "Victor",
  email: "victor@mail.com",
  password: "654321",
  image: "https://avatars1.githubusercontent.com/u/51501259?v=4",
  location: "Buenos Aires",
  score: 500,
  bio: "Hi everyone! I am on the exciting journey to save the planet. Add me to your friends' list, and let's see who will get more points!"
  )

puts "Created users from Le Wagon batch 287"

puts "Creating users - Le Wagon teachers"

alext = User.create!(
  name: "Alex",
  email: "alext@mail.com",
  password: "654321",
  image: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/qwtgbgsk9publpc4b7rj.jpg",
  location: "London",
  score: 400,
  bio: "Hi everyone! I am on the exciting journey to save the planet. Add me to your friends' list, and let's see who will get more points!"
  )

arthur = User.create!(
  name: "Arthur",
  email: "arthur@mail.com",
  password: "654321",
  image: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/onkzo1zsbde5taheslax.jpg",
  location: "London",
  score: 600,
  bio: "Hi everyone! I am on the exciting journey to save the planet. Add me to your friends' list, and let's see who will get more points!"
  )

benjamin = User.create!(
  name: "Benjamin",
  email: "benjamin@mail.com",
  password: "654321",
  image: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/ixr9unj1pvqtkfbzvlcu.jpg",
  location: "London",
  score: 900,
  bio: "Hi everyone! I am on the exciting journey to save the planet. Add me to your friends' list, and let's see who will get more points!"
  )

lucien = User.create!(
  name: "Lucien",
  email: "lucien@mail.com",
  password: "654321",
  image: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/tsrufxymkfkjy80nk3ha.jpg",
  location: "London",
  score: 1050,
  bio: "Hi everyone! I am on the exciting journey to save the planet. Add me to your friends' list, and let's see who will get more points!"
  )

phelim = User.create!(
  name: "Phelim",
  email: "phelim@mail.com",
  password: "654321",
  image: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/gnwe9ai0lmcs7yfdoeh9.jpg",
  location: "London",
  score: 1100,
  bio: "Hi everyone! I am on the exciting journey to save the planet. Add me to your friends' list, and let's see who will get more points!"
  )

marco = User.create!(
  name: "Marco",
  email: "marco@mail.com",
  password: "654321",
  image: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/talgeknkk0sjgepvfezr.jpg",
  location: "Rome",
  score: 1800,
  bio: "Hi everyone! I am on the exciting journey to save the planet. Add me to your friends' list, and let's see who will get more points!"
  )

puts "Created users - Le Wagon staff"


puts "Creating basic challenges:"

plastic_free = Challenge.create!(
  name: "Plastic-free",
  duration: 20,
  description: "Plastic bottles, disposable coffee cups, single-use take-away packaging, cling film, plastic sandwich bags… ditch all of those for 20 days!
  Sadly, every day around 8 million pieces of plastic find their way into our oceans. You might be surprised but recently scientists discovered microplastics
  embedded deep in the Arctic ice! Join this challenge and be part of the solution!",
  image: "no_plastic.png",
  reward: 1000,
  address: "Unit 13, 138 Kingsland Rd, London E2 8DY",
  user: lila
)

stay_dark = Challenge.create!(
  name: "Stay dark",
  duration: 10,
  description: "Reducing energy use limits the number of carbon emissions in the environment. Carbon emissions play a significant role in climate change. With billions of harmful emissions in the atmosphere, cutting back is always a good thing. Try to get by without electricity. That also means: No Netflix!",
  image: "dark.png",
  reward: 500,
  address: "Rudi-Dutschke-Straße 26, 10969 Berlin, Germany",
  user: moritz
)

no_car = Challenge.create!(
  name: "Leave your car at home",
  duration: 20,
  description: "Car pollution is one of the major causes of global warming. The chemicals that vehicles emit also affect the air, soil and water quality.
  Take out your bicycle & join this challenge!",
  image: "bike.png",
  reward: 1000,
  address: "16 Villa Gaudelet, 75011 Paris, France",
  user: ahmad
)

five_minute_shower = Challenge.create!(
  name: "Take 5-minute showers",
  duration: 25,
  description: "Clean, fresh water is a limited resource. While almost 70 percent of the Earth is made up of water, many parts of the world suffer from clean water shortage.
  Conserving water is important because it keeps water pure and clean while protecting the environment.
  We suggest, join this challenge & start taking short 5-minute showers!",
  image: "shower.png",
  reward: 1250,
  address: "16 Villa Gaudelet, 75011 Paris, France",
  user: ahmad
)

watch_documentary = Challenge.create!(
  name: "Watch a documentary",
  duration: 1,
  description: "Watch a documentary about the environment. Our suggestion: 'Blue planet'!",
  image: "tv.png",
  reward: 50,
  address: "16 Villa Gaudelet, 75011 Paris, France",
  user: ahmad
)

reusable_bags = Challenge.create!(
  name: "Ditch plastic bags!",
  duration: 30,
  description: "Did you know that worldwide, about 2 million plastic bags are used every minute? You might be surprised, but the average time that a plastic bag is used for is … 12 minutes! We say, ditch plastic bags! Just carry a reusable one in your bag & be awesome! ",
  image: "paper_bag.png",
  reward: 1500,
  address: "16 Villa Gaudelet, 75011 Paris, France",
  user: ahmad
)

no_meat = Challenge.create!(
  name: "Go vegan!",
  duration: 14,
  description: "Switching from a meat-based diet to a diet based on whole grains,
  fruits and vegetables reduces water and land use, lowers pollution,
  slows deforestation and reduces destruction of topsoil, to name a few benefits.
  Join this challenge, and replace steak with broccoli for 14 days!",
  image: "no_meat.png",
  reward: 700,
  address: "16 Villa Gaudelet, 75011 Paris, France",
  user: ahmad
)

attend_lecture = Challenge.create!(
  name: "Attend an event or lecture",
  duration: 1,
  description: "Educate yourself, and attend an event or lecture about the environment!",
  image: "lecture.png",
  reward: 50,
  address: "16 Villa Gaudelet, 75011 Paris, France",
  user: ahmad
)

clean_neighborhood = Challenge.create!(
  name: "Clean up your neighbourhood",
  duration: 1,
  description: "Set a good example to your neighbours, clean up the trash in your neighborhood!",
  image: "clean_up.png",
  reward: 50,
  address: "16 Villa Gaudelet, 75011 Paris, France",
  user: ahmad
)

puts "Created basic challenges 'Plastic-free', 'Stay dark' and 'Leave your car at home' and more..."



@tracker_users = [marco, phelim, lucien, benjamin, arthur, alext, viktor,
 thomas, terri, susan, stanislas, rokas, raquel, paul, nicholas, mohammad, melissa,
 matthew, matt, mark, marc, loki, julien, joe, ghita, george, francesca, evelina, ellen,
 ekrem, dumitru, dima, demi, charles, benoit, ben, andreea, ali, alexandre, alan, ahmad,
 lila, moritz]

@challenges = [plastic_free, stay_dark, no_car, five_minute_shower, watch_documentary, reusable_bags, no_meat, attend_lecture, clean_neighborhood]

@tracker_users.each do |user|
  @some_challenges = @challenges.sample(4)
  @some_challenges.each do |challenge|
    Tracker.create!(user: user, challenge: challenge)
  end
end



puts "Created basic challenges."

puts "Creating challenges for demo day!"

@demo_tracker = Tracker.create(user: evia, challenge: plastic_free)

demo_tracker_days = ((Date.today - 5)..(Date.today + 14)).to_a

demo_tracker_days.each do |day|
  TrackerDay.create(date: day.to_s, tracker: @demo_tracker)
end

puts "Created challeng for demo day!"
puts "All set!!!"
puts ""
puts ""
puts ""
puts "GO"
puts ""
puts ""
puts ""
puts "TEAM"
puts ""
puts ""
puts ""
puts "ECOPAL"
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts "GO, GO, GO!!!"
puts ""
puts ""
puts ""

