# require 'pry'
# require 'faker'
# User.destroy_all
# Category.destroy_all
# Event.destroy_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: 'alice', password: 'password')
User.create(name: 'bob', password: 'password')
User.create(name: 'eve', password: 'password')

Category.create(name: 'kids')
Category.create(name: 'party')
Category.create(name: 'fitness / health')
Category.create(name: 'sports')
Category.create(name: 'movies')
Category.create(name: 'parades')
Category.create(name: 'plays')
Category.create(name: 'comedy')
Category.create(name: 'animals')
Category.create(name: 'tech')
Category.create(name: 'education')
Category.create(name: 'museums')

# 2.times do
#   e = Event.create(
#     user_id: Faker::Number.between(1,3),
#     category_id: Faker::Number.between(1,12),
#     content: Faker::Hipster.sentences(2),
#     event_name: Faker::Hipster.sentence(3),
#     address: Faker::Address.full_address,
#     picture: Faker::Avatar.image,
#     start_datetime: Faker::Date.forward,
#     end_datetime: Faker::Date.forward
#   )
#   binding.pry
# end

#default profile pic
# "https://res.cloudinary.com/airwotever/image/upload/v1395969197/default-profile-pic_hkmqpe.png"



# Event.create(user_id: nil, cat_id:nil, content: "The NYC Halloween Yacht Party is exactly what it sounds like!, This is an event where you can hang in your costumes, get a drink, and enjoy the view of the NYC skyline from a yacht. This event is $30. This event is on Friday Oct26th, 2018. Boarding starts at 7pm , and the party ends at 11pm. Tickets available at Gametightny.com", event_name: "NYC Yacht Party", address: "2430 Fdr Drive, New York, NY 10010", picture: "https://nightout.s3.amazonaws.com/media/photos/37428/mobile_2x-f8ef9f397fc5b155.jpg?1537352994", time:nil)
# Event.create(user_id: nil, cat_id: nil, content: "Join us for the start of something special! Just one week before the TCS New York City Marathon, this race travels the roads of Central Park and ends at the Marathon finish line, with Poland Spring brand water available on the course and in the post-finish area. This 5 mile race is being held at Central Park on Sunday, October 28, 2018 at 8:30am.", event_name: "Poland Spring Marathon Kickoff", address: "Central Park NYC", picture: "https://www.nyrr.org/races-and-events/2018/poland-spring-marathon-kickoff-5m", time:nil)
# Event.create(user_id: nil, cat_id: nil, content: "In this 30-minute session we’ll show you how to explore notes and chords for creating a music track using Smart Instruments in GarageBand. This event will be held on Sunday, October 28,2018 at 4:00pm-4:30pm.", event_name: "Quick Start: Notes and Chords with GarageBand.", address: "Apple Ridge Hill NYC", picture: "https://rtlimages.apple.com/cmc/WSImages/WORKSHOP/2018-03/6382652838657361769.png", time: nil)
# Event.create(user_id: nil, cat_id: nil, content: "Prospect Park Alliance invites all local ghosts and ghouls to the 39th Annual Halloween Haunted Walk and Fair! Taking place Saturday, October 27, from 12-3 pm, this much-anticipated annual event brings thousands of families for free, ghastly fun to Prospect Park.", event_name: "Halloween Haunted Walk & Fair", address: "Prospect Park. Lookout Hill Brooklyn, NY 11225", picture: "https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F49050572%2F127325797991%2F1%2Foriginal.jpg?w=800&auto=compress&rect=0%2C250%2C3000%2C1500&s=defa44585c44291ebf4971008d1665fe", time: nil)
# Event.create(user_id: nil, cat_id: nil, content: "Following the 39th Annual Prospect Park Halloween, the hoots and howls continue at City Point with boo-gie down tunes, ghastly face painting, ghoulish balloon twists and more spooky activities for ghosts and goblins to enjoy at this second annual after party!
# Halloween in Prospect Park is supported in part by City Point and NewYork-Presbyterian Brooklyn Methodist Hospital.", event_name: "BKLYN BOO!", address: "City Point, Downtown Brooklyn. 445 Albee Square West.", picture: "https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F49050572%2F127325797991%2F1%2Foriginal.jpg?w=800&auto=compress&rect=0%2C250%2C3000%2C1500&s=defa44585c44291ebf4971008d1665fe", time: nil)
# Event.create(user_id: nil, cat_id: nil, content: "The New York Knicks will play the Golden State Warriors at Madison Square Garden on October 26th, 2018.", event_name: "New York Knicks vs. Golden State Warriors. Event on Friday, October 26, 2018 at 7:30pm.", address: "Madison Square Garden, New York, NY", picture: "https://www.msg.com/wp-content/uploads/2017/08/NYK_010316_14621-ALT-L-1168x660-OPT-960x540.jpg", time: nil)
# Event.create(user_id: nil, cat_id: nil, content: "Halyard's brings you jokes from a bunch of very funny ladies at this free show brought to you by Naomi Karavani, Melissa Stokoski, Shelby Taylor and Erica Spera. This event is at Halyards located at 406 Third Ave, NY 11215 on Friday, October 26, 2018 at 8:30pm. This is a free event!", event_name: "Bitches Brew", address: "Halyard on 406 Third Ave, NY 11215", picture: "https://media.timeout.com/images/103670575/750/422/image.jpg", time: nil)
# Event.create(user_id: nil, cat_id: nil, content: "The Queens International Night Market is a large, family-friendly open-air night market in Queens, featuring up to 100 independent vendors selling merchandise, art, and food and featuring small-scale cultural performances, all celebrating the rich cultural diversity and heritage of NYC and Queens.", event_name: "Queens Night Market. This event is being held on Saturday, October 27,2018 from 6pm to 12am.", address: "New York Hall of Science. Flushing Meadows Corona Park, Queens", picture: "https://cdn.newsday.com/polopoly_fs/1.17965727.1537724663!/httpImage/image.jpg_gen/derivatives/display_960/image.jpg", time: nil)
# Event.create(user_id: nil, cat_id: nil, content: "This non-ballistic dance class uses the dance vocabulary from the traditional Korean dance repertoire to increase your range of motion and flexibility. Event is held every Monday, from 7:30pm to 8:30pm.", event_name: "Korean Dance: Traditional and Fusion", address: "441 West 26th St NYC", picture: "https://www.kyccla.org/wp-content/uploads/2017/09/IMG_0318-993x385.jpg", time: nil)
# Event.create(user_id: nil, cat_id: nil, content: "Enter the building either through the green door at 429 W. 127th Street (stairs) to the 3 floor or through the gray door at 423 W. 127th St (elevator) to the 3rd floor. A fun and exciting workout that uses easy to follow dance steps to maintain cardiovascular health. This class is created for all levels and you do not need any prior dance experience to participate. Event is every Monday from 6pm-7pm.", event_name: "Old School R&B Dance Fitness", address: "429 W 127th St. NYC", picture: "https://flyers.dancedeets.com/493437917720762", time: nil)
# Event.create(user_id: nil, cat_id: nil, content: "Students will practice beginning Vinyasa postures to warm up the body, bring flexibility to all muscles and joints and wake up the nervous system. A gentle, yet powerful series of balancing, stretching, back bending, twisting and mild inverted postures follow. This practice ends with Deep Relaxation, breathing exercises and concentration/meditation to remove impurities and bring a sense of well-being to the body and radiant peace to the mind. Event is every Monday from 10:30am to 11:30am.", event_name: "Beginner Yoga", address: "Queens Library - Corona. 38-23 104th St", picture: "http://96bda424cfcc34d9dd1a-0a7f10f87519dba22d2dbc6233a731e5.r41.cf2.rackcdn.com/thrivepilatesphiladelphia/Thrive-4.jpg", time: nil)
# Event.create(user_id: nil, cat_id: nil, content: "In this introductory class, we'll be reviewing the basics of creating 3D models that are designed for 3D printers. The software and platforms we will be using are all free to use and ideal for first time users. This event is on Saturday, October 27,2018 from 1pm-4pm.", event_name: "Intro to 3D Modeling and Printing", address: "Hack Manhattan. 137 West 14th Street, 2nd Floor. NYC", picture: "https://secure.meetupstatic.com/photos/event/6/c/1/e/highres_469767678.jpeg)", time: nil)

puts 'seed.rb file was ran; check db that it was seedeed!'
