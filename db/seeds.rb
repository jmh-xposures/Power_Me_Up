# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# db/seeds.rb
require "open-uri"
require 'faker'
User.destroy_all
Power.destroy_all
Rental.destroy_all
# heros = []
humans = []
# powers = []

# 5.times do
#     heros << User.create!(
#         email: Faker::Internet.email,
#         full_name: Faker::Superhero.name,
#         is_hero: true,
#         password: 123456
#         )
# end

# Spider-Man -------------------------------------------------------------
spider_man = User.create!(
  email: "Spidey@spiderman.com",
  full_name: "Spider-Man",
  is_hero: true,
  password: 123456)

image_spider_man = URI.open('https://scontent.fykz2-1.fna.fbcdn.net/v/t31.0-8/19956750_1964887497129104_2283597212990844853_o.jpg?_nc_cat=111&_nc_sid=9267fe&_nc_ohc=llP5bf36L_4AX-vDQXx&_nc_oc=AQmWYfGOOtnplx_XoopOH0IImsEZpECkjBfga-26OD7Jr4d4TXxyc1-pMK24i3lk8Og&_nc_ht=scontent.fykz2-1.fna&oh=663c5cc5e1498b0447c465f4cb386807&oe=5F635EE2')
spider_man.photo.attach(io: image_spider_man, filename: 'spider_man.jpg', content_type: 'image/jpg')

organic_webbing = Power.create!(
  name: "Organic Webbing",
  short_description: "Shoot web-fluid through your wrists",
  long_description: "Internally produce web-fluid and organically
  shoot it out of your own wrists. Trap people, glide from one
  skyscraper to the next or just aimlessly shoot web-fluid through your wrists.",
  price: 25000,
  user: spider_man)
image_webbing = URI.open('https://i.redd.it/6bjx2xpgp6g11.jpg')
organic_webbing.photo.attach(io: image_webbing, filename: 'web.jpg', content_type: 'image/jpg')

spidey_sense = Power.create!(
  name: "Spidey-Sense",
  short_description: "Experience my classic 'Spidey-Sense'",
  long_description: "Wether you are going to be part of a competition, or on a mission dealing with
  suspicious people, or perhaps you need to go spend some time in a dangerous hood... you can do better
  then just keep an eye over your shoulder. My Spidey_sense gives let's you know what danger is coming your way
  before it even happens!!! Amazing power!",
  price: 18000,
  user: spider_man)
image_sense = URI.open('https://static2.srcdn.com/wordpress/wp-content/uploads/2019/10/Spider-Verse-Spider-Sense-Movie.jpg')
spidey_sense.photo.attach(io: image_sense, filename: 'sense.jpg', content_type: 'image/jpg')

spider_talk = Power.create!(
  name: "Spider-Talk",
  short_description: "Communicate with spiders",
  long_description: "Mentally communicate with spiders and have them do your bidding!",
  price: 12000,
  user: spider_man)
image_spider_talk = URI.open('https://i1.wp.com/www.zoom-comics.com/wp-content/uploads/sites/36/2019/09/spider-biter.jpg?fit=1280%2C720&ssl=1')
spider_talk.photo.attach(io: image_spider_talk, filename: 'spider_talk.jpg', content_type: 'image/jpg')

# Superman -------------------------------------------------------------
superman = User.create!(
  email: "super@man.com",
  full_name: "Superman",
  is_hero: true,
  password: 123456)
image_superman = URI.open('https://thumbor.forbes.com/thumbor/fit-in/1200x0/filters%3Aformat%28jpg%29/https%3A%2F%2Fblogs-images.forbes.com%2Fjvchamary%2Ffiles%2F2016%2F03%2Fman_of_steel-1200x800.jpg')
superman.photo.attach(io: image_superman, filename: 'superman.jpg', content_type: 'image/jpg')

fly = Power.create!(
  name: "Fly",
  short_description: "Fly",
  long_description: "Just Fly. !Caution! Stay away from Kryptonite!",
  price: 500000,
  user: superman)
image_fly = URI.open('https://filmdaily.co/wp-content/uploads/2018/03/superman-man-of-steel.jpg')
fly.photo.attach(io: image_fly, filename: 'fly.jpg', content_type: 'image/jpg')

vision = Power.create!(
  name: "Vision",
  short_description: "X-ray vision, heat vision, microscopic and telescopic vision...",
  long_description: "See the world like you never have before with this incredible power.
  X-ray vision, heat vision, microscopic and telescopic vision... See things across interstellar
  distances and observe life at an atomic level !Caution! Stay away from Kryptonite!",
  price: 200000,
  user: superman)
image_vision = URI.open('https://www.100hdwallpapers.com/wallpapers/4000x2250/superman_heat_vision_4k-other.jpg')
vision.photo.attach(io: image_vision, filename: 'vision.jpg', content_type: 'image/jpg')

super_breath = Power.create!(
  name: "Super Breath",
  short_description: "Generate hurricane-force winds, freeze objects and hold your breath for hours underwater",
  long_description: "Generate hurricane-force winds and freeze objects with your breath.
  You can also hold your breath for hours underwater with this unique power.
  !Caution! Stay away from Kryptonite!",
  price: 250000,
  user: superman)
image_breath = URI.open('https://3.bp.blogspot.com/-2Tmqn_LKjAA/TqrNVTONFFI/AAAAAAAABMQ/8irCPqdr0tQ/s1600/superman+ice.jpg')
super_breath.photo.attach(io: image_breath, filename: 'breath.jpg', content_type: 'image/jpg')

# Hulk -------------------------------------------------------------
hulk = User.create!(
  email: "hulk@greenman.com",
  full_name: "Hulk",
  is_hero: true,
  password: 123456)
image_hulk = URI.open('https://static3.srcdn.com/wordpress/wp-content/uploads/2019/04/Movie-Hulk-Immortal-Thousands-of-Years-Old.jpg')
hulk.photo.attach(io: image_hulk, filename: 'hulk.jpg', content_type: 'image/jpg')

regenerative_healing = Power.create!(
  name: "Regenerative Healing",
  short_description: "No matter how severe the injury, fully heal in a matter of minutes",
  long_description: "In need of some amazing power which will ensure you will come out of any type of
  activity unscathed? Regenerative healing will keep you as good as new for the duration of your rental!",
  price: 80000,
  user: hulk)
image_healing = URI.open('https://i.stack.imgur.com/pqvZF.gif')
regenerative_healing.photo.attach(io: image_healing, filename: 'healing.jpg', content_type: 'image/jpg')

hulkify = Power.create!(
  name: "Hulkify",
  short_description: "Experience the incredible power of the hulk",
  long_description: "Experience the power, the speed, the color, and the atomic farts!
  Become the Hulk! ",
  price: 150000,
  user: hulk)
image_hulkify = URI.open('https://imagesvc.meredithcorp.io/v3/mm/image?q=85&c=sc&poi=face&w=2000&h=1047&url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F6%2F2018%2F03%2Fthe-hulk-2000.jpg')
hulkify.photo.attach(io: image_hulkify, filename: 'hulkify.jpg', content_type: 'image/jpg')

# Wolverine -------------------------------------------------------------
wolverine = User.create!(
  email: "wolf@wolverine.com",
  full_name: "Wolverine",
  is_hero: true,
  password: 123456)
image_wolverine = URI.open('https://img.cinemablend.com/filter:scale/cb/c/6/9/2/c/4/c692c4a40bfbe1a4197c909147054ab8a5444b0f7738a40a1e27688719841d40.jpg?fw=1200')
wolverine.photo.attach(io: image_wolverine, filename: 'wolverine.jpg', content_type: 'image/jpg')

night_vision = Power.create!(
  name: "Night Vision",
  short_description: "Vision across vast distances and night vision",
  long_description: "See across vast distances with perfect clarity in the daytime
  or just as well in perfect darkness.",
  price: 20000,
  user: wolverine)
image_vision = URI.open('https://static1.cbrimages.com/wordpress/wp-content/uploads/2018/03/night-vision.jpg?q=50&fit=crop&w=740&h=416&dpr=1.5')
night_vision.photo.attach(io: image_vision, filename: 'vision.jpg', content_type: 'image/jpg')

lie_detection = Power.create!(
  name: "Lie Detection",
  short_description: "Become a human lie detector",
  long_description: "Become a human lie detecor with
  this super sense, wether you want to uncover some secret identities,
  detect some devious plans, or any little dirty secrets. ",
  price: 40000,
  user: wolverine)
image_lie_detect = URI.open('https://static3.cbrimages.com/wordpress/wp-content/uploads/2018/03/26eafbaa83f4f54887a6a6af24721a35.jpg?q=50&fit=crop&w=740&h=370&dpr=1.5')
lie_detection.photo.attach(io: image_lie_detect, filename: 'lie_detect.jpg', content_type: 'image/jpg')

temp_resistance = Power.create!(
  name: "Temperature Resistance",
  short_description: "Resist extreme temperatures",
  long_description: "Whether it be frigid temperatures or incinerating heats,
  brush off nearly any weather extreme with this amazing power!",
  price: 80000,
  user: wolverine)
image_temp_resist = URI.open('https://qph.fs.quoracdn.net/main-qimg-f6cd01f1034acfb968d92867c2f0b923')
temp_resistance.photo.attach(io: image_temp_resist, filename: 'temp_resist.jpg', content_type: 'image/jpg')

# Venom -------------------------------------------------------------
venom = User.create!(
  email: "venom@abyss.com",
  full_name: "Venom",
  is_hero: true,
  password: 123456)
image_venom = URI.open('https://sm.ign.com/t/ign_in/review/v/venom-revi/venom-review_beu9.1200.jpg')
venom.photo.attach(io: image_venom, filename: 'venom.jpg', content_type: 'image/jpg')

genetic_memory = Power.create!(
  name: "Genetic Memory",
  short_description: "Capture the memories of anyone you touch",
  long_description: "This genetic memory ability allows you
  to recall memories from people you've been in contact with. Use this power creatively!",
  price: 100000,
  user: venom)
image_memory = URI.open('https://static2.cbrimages.com/wordpress/wp-content/uploads/2018/04/venomized-1-cover-feat.jpg?q=50&fit=crop&w=740&h=370&dpr=1.5')
genetic_memory.photo.attach(io: image_memory, filename: 'memory.jpg', content_type: 'image/jpg')



# heros.each do |hero|
#   rand(1..5).times do
#     powers << Power.create!(
#     name: Faker::Superhero.power,
#     short_description: "short description",
#     long_description:  "long description",
#     price: rand(1..500),
#     user: hero
#   )
#   end
# end

5.times do
    humans << User.create!(
        email: Faker::Internet.email,
        full_name: Faker::Name.name,
        is_hero: false,
        password: 123456
        )
end

Rental.create!(
  comment: "lorem ipsum",
  power: Power.first,
  user: humans.first
  )

# Rental.create!(
#   comment: "lorem ipsum",
#   power: Power.second,
#   user: humans.first
#   )

# Rental.create!(
#   comment: "lorem ipsum",
#   power: Power.second,
#   user: humans.first
#   )
