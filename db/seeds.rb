# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Rsvp.destroy_all
Event.destroy_all

User.create(image: "https://menshaircuts.com/wp-content/uploads/2018/12/tp-natural-hair-care-tips-black-guys-curls-500x750.jpg", username:"bananasforsale", name: "Henry C.", location: "Brooklyn, New York", interests: "yoga, traveling, brunch, music", password: "password")
User.create(image: "https://st3.depositphotos.com/3591429/12973/i/950/depositphotos_129738170-stock-photo-beautiful-asian-hipster-girl.jpg", username:"ohmysensesfail", password: "password", name: "Ariel P.", location: "New York, New York", interests: "lifting weight, biking, marathons, the yankees", password: "password")
User.create(image: "https://images.amcnetworks.com/bbcamerica.com/wp-content/uploads/2013/06/Hipster.jpg", username:"whatsinmycup", name: "Bartosz M.", location: "Queens, New York", interests: "music, dance, movies, food", password: "password")
User.create(image: "https://s.wsj.net/public/resources/images/MK-CM687_MENSKI_GR_20140528161349.jpg", username:"tropicalmonkies6", name: "Seth C.", location: "Brooklyn, New York", interests: "food, diy projects, cycling", password: "password")
User.create(image: "https://media.guestofaguest.com/t_article_content/gofg-media/2016/11/1/47850/screen_shot_2016-11-02_at_1.13.20_pm.png", username:"underoath6", name: "Tiffany L.", location: "Brooklyn, New York", interests: "marathons, brunch, yoga, food", password: "password")
User.create(image: "https://coolmenshair.com/wp-content/uploads/black-man-bun-1.jpg", username:"crazy4pickles", name: "Jared F.", location: "Bronx, New York", interests: "vinyls, Bobby Darin, plants, wine", password: "password")
User.create(image: "https://assets.bwbx.io/images/users/iqjWHBFdfxIU/itzUoLgdaepM/v1/1000x-1.jpg", username:"imokay52", name: "Ellen K.", location: "Staten Island, New York", interests: "beach, traveling, non-fiction, psychology, puppies!!", password: "password")
User.create(image: "https://theshaderoom.com/wp-content/uploads/2021/01/IMG_4946.jpg", username:"chillin4life", name: "Patrick S.", location: "Brooklyn, New York", interests: "marathons, brunch, yoga, food", password: "password")
User.create(image: "https://activebulgariansociety.org/uploads//blog/abedcb1e557b284b06b0057ee86288d1.jpg", username:"destinyschild", name: "Arrow", location: "Bronx, New York", interests: "vinyls, Bobby Darin, plants, wine", password: "password")
User.create(image: "https://eadn-wc03-196922.nxedge.io/cdn/wp-content/uploads/2018/11/a-black-woman-702x375.jpg", username:"eggtraveler", name: "Maddy", location: "Staten Island, New York", interests: "beach, traveling, non-fiction, psychology, puppies!!", password: "password")
User.create(image: "https://i.pinimg.com/originals/eb/6c/4f/eb6c4f2a16aa1f5e60302d54be121ebc.jpg", username: "yoslapmyfro", name: "Alexis", location: "Staten Island, New York", interests: "denim, fire mixtapes, table clothes, unscented candles", password: "password")

Event.create(name: "Chocolate Truffle Making Night", price: 60, date: "July 10, 2021", time: "6PM-8PM", location: "245 W 29th St, New York, New York 10001", image: "https://images-gmi-pmc.edge-generalmills.com/5fe07bdf-9f48-411a-8843-228211c84f8e.jpg", user_id: User.all.sample.id, description: "A night of decadent creations under the watchful eyes of culinary masters.", category: "Class")
Event.create(name: "Let's Meditate New York", price: 0, date: "July 2, 2021", time: "9AM-10AM", location: "Zoom: TBD", image: "https://media1.popsugar-assets.com/files/thumbor/U0BVuOsYqAfhPpQYwvhygVPZERY/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2020/01/16/857/n/1922729/tmp_CsUeWG_af5b79a549097698_GettyImages-884065960.jpg", user_id: User.all.sample.id, description: "Led by Zenzel Washington", category: "Free")
Event.create(name: "Everything Chocolate", price: 59.99, date: "July 6, 2021", time: "6:30PM-8PM", location: "14 W 19th St, New York, New York 10011", image: "https://media.tacdn.com/media/attractions-splice-spp-674x446/06/6c/66/65.jpg", user_id: User.all.sample.id, description: "Who doesn't like chocolate? Learn how to make some of your own!", category: "Class")
Event.create(name: "Sunset Fridays, Drinks and Dinner Party", price: 10, date: "July 12, 2021", time: "8PM-2AM", location: "156 W 38th St, New York, New York 10018", image: "https://www.cityguideny.com/uploads2/151670/images/barhugoinline.jpg.png", user_id: User.all.sample.id, description: "LETS PARTY!!", category: "Nightlife")
Event.create(name: "Catalina Wine Mixer", price: 100, date: "July 18, 2021", time: "6PM-12AM", location: "156 W 38th St, New York, New York 10018", image: "https://www.fox46.com/wp-content/uploads/sites/109/2015/09/c0a64f37-rtert465546fgfgds_1441846946969_185072_ver1.0.jpg", user_id: User.all.sample.id, description: "Mixture of baby jesus and Fergie", category: "Nightlife")
Event.create(name: "Free Networking Event", price: 0, date: "July 30, 2021", time: "6:30PM-10:00AM",location: "NYC Midtown Rooftop Lounge, Midtown, New York 10018", image: "https://www.incimages.com/uploaded_files/image/1920x1080/getty_1132916516_391640.jpg", user_id: User.all.sample.id, description: "Explore new professional opportunies by meeting the sharpest minds in your industry", category: "Free")
Event.create(name: "Brunch in Soho", price: 0, date: "July 30, 2021", time: "12PM-3PM", location: "217 Bowery, New York, NY 10002", image: "https://www.thisissoho.co.uk/assets/images/things-to-do/Hovarda(1).jpg", user_id: User.all.sample.id, description: "Couple of the year: Bloody Mary and Eggs Benny", category: "Food")
Event.create(name: "Bronx Night Market", price: 0, date: "July 13, 2021", time: "9PM-1AM",location: "1 Fordham Plaza, Bronx, New York 10458", image: "https://newyorkled.com/___MMMBlog/wp-content/uploads/2019/04/Bronx-Night-Market-Cropped.jpg", user_id: User.all.sample.id, description: "A trendy bazarre full of up and coming shops and vendors", category: "Free")
Event.create(name: "NYC Dance Week Festival", price: 0, date: "July 18, 2021", time: "8PM-11PM",location: "Noted Global Studios, New York", image: "https://www.holland-dance.com/assets/uploads/Talent-On-The-Move-2019-Holland-Dance-Festival-Codarts-Rotterdam-300x169.png", user_id: User.all.sample.id, description: "Boogie into the night with an eclectic mix of music genres and artists", category: "Free")
Event.create(name: "Juelz Santana Live Yacht Party", price: 325, date: "July 25, 2021", time: "9PM",location: "299 South St, New York, New York 10002", image: "https://miro.medium.com/max/4000/1*9efGYqJaFuepMPSwIy0okw.jpeg", user_id: User.all.sample.id, description: "Refer to event title", category: "Nightlife")
Event.create(name: "Caribbean Fridays", price: 50, date: "July 2, 2021", time: "9PM-1AM",location: "225 East Houson St, New York, New York", image: "https://i2-prod.liverpoolecho.co.uk/whats-on/music-nightlife-news/article14444181.ece/ALTERNATES/s615/Laid-Blak-Rum-Reggae-Festival-2018-8.jpg", user_id: User.all.sample.id, description: "Dance the night away with live music, drinks and food!", category: "NightLife")
Event.create(name: "Bryant Park Picnic Performances: New York Philharmonic", price: 0, date: "July 9, 2021", time: "7PM",location: "Bryant Park, New York, New York", image: "https://patch.com/img/cdn20/users/23562214/20210519/042930/styles/raw/public/processed_images/bryant%20park%20picnic%20performances%202021%202.jpg", user_id: User.all.sample.id, description: "Experience the classical performance of the famous Philharmonic at Bryant Park. First come first serve!", category: "Free")
Event.create(name: "Smorgasburg", price: 0, date: "July 6, 2021", time: "1PM-7PM",location: "90 Kent Ave, Brooklyn, New York 11211", image: "https://cdn.vox-cdn.com/thumbor/Pf82B8OlUXdZhH-bFIR0swCTiBE=/0x0:1241x984/1220x813/filters:focal(522x393:720x591):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/67052378/lobsterdamus.0.jpg", user_id: User.all.sample.id, description: "Explore the variety of vendors of New York's famous restaurants", category: "Free")
Event.create(name: "Dumpling Making Class", price: 50, date: "July 2, 2021", time: "11AM-1PM", location: "Virtual: TBD", image: "https://ccs-course-images.s3.amazonaws.com/products/1605641438899-folded%20dumplings.jpg", user_id: User.all.sample.id, description: "Learn how to make pork stuffing, fold and wrap dumplings and mix your own sauce. Vegetarian options available.", category: "Class")
Event.create(name: "Calligraphy Class", price: 45, date: "July 2, 2021", time: "10AM-11:30AM", location: "Virtual: TBD", image: "https://i0.wp.com/fontlot.com/wp-content/uploads/2019/09/jackpot-calligraph-font2.jpg?resize=750%2C500&ssl=1", user_id: User.all.sample.id, description: "Create customized cards with this calligraphy class.", category: "Class")
Event.create(name: "House Plants 101", price: 30, date: "July 22, 2021", time: "12PM-2PM", location: "Virtual: TBD", image: "https://www.thespruce.com/thmb/4-xLVsJIZfIxvVlJtwr1DXqNb9s=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/most-popular-houseplants-4766580-2-71981826fb0a461786109b3e4f5aa09d.jpg", user_id: User.all.sample.id, description: "Learn to properly care for your plant babies.", category: "Class")
Event.create(name: "Summer Kickoff 5k", price: 35, date: "July 13, 2021", time: "9AM-12PM", location: "Staten Island: TBD", image: "https://content.active.com/Assets/Active.com+Content+Site+Digital+Assets/Article+Image+Update/Running/5K+or+10K/carousel.jpg", user_id: User.all.sample.id, description: "Kickoff the summer with a 5 kilometer run!", category: "Workout")
Event.create(name: "Poker Tournament", price: 0, date: "July 10, 2021", time: "1PM-5PM",location: "TBD: New York, New York", image: "https://image.freepik.com/free-photo/girl-croupier-shuffles-poker-cards-casino_96270-21.jpg", user_id: User.all.sample.id, description: "Connect with other players to play poker and win prizes with no buy-in fee.", category: "Free")
Event.create(name: "Prospect Park Pillow Fight", price: 0, date: "July 13, 2021", time: "1PM-3PM",location: "Prospect Park, Brookly, New York", image: "http://1.bp.blogspot.com/-m4hpIKH7MsA/UWUJ3VLB7bI/AAAAAAAAAHQ/iOeEod1sGp8/s400/world-pillow-fight-day-london-trafalgar-square-2013-dave-pearce-2.jpg", user_id: User.all.sample.id, description: "Forget all your stress and adult worries as you (softly) pummel strangers at New York’s annual International Pillow Fight.", category: "Free")
Event.create(name: "Movies at the Park", price: 0, date: "July 13, 2021", time: "9PM",location: "Central Park, New York, New York", image: "http://2.bp.blogspot.com/-cjCDRqQ3UyM/UdI_nDOFnVI/AAAAAAAAb0E/783NuEt6xoU/s640/DSC_0140.JPG", user_id: User.all.sample.id, description: "Bring a blanket, snacks and enjoy our weekly movie night ", category: "Free")
Event.create(name: "SoulCycle Pop-Up Class", price: 45, date: "July 18, 2021", time: "12PM-1PM",location: "Flatiron, New York, New York", image: "https://res.cloudinary.com/westfielddg/image/fetch/c_fill,f_auto,h_556,w_994/https://res.cloudinary.com/westfielddg/image/upload/westfield-media/us/event/centurycity/rectangle-image/qgxiinilauppnpwktnas.jpg", user_id: User.all.sample.id, description: "Ride with SoulCycle's lead instructor to an upbeat playlist with love, acceptance and inclusivity.", category: "Workout")
Event.create(name: "Shot @ Love w/ Prime Minister Harold", price: 10, date: "June 18, 2021", time: "2PM", location: "Bushwick, Brooklyn", image: "https://cdn.shortpixel.ai/spai/w_827+q_lossy+ret_img+to_webp/https://littlefriendspetsitting.com/wp-content/uploads/2020/02/Dog-lying-in-front-of-a-sign-saying-Will-you-be-my-date-1050x675.jpg", user_id: User.all.sample.id, description: "Trying to find a nice lady friend for my pup, Prime Minister Harold", category: "Personal")
Event.create(name: "New York City Walking Tour", price: 30, date: "June 27, 2021", time: "10AM-3PM", location: "Central Park West", image: "https://www.nyctourist.com/sites/default/files/billboard/downtown-walking-tour-by-manhattan_C.jpg", user_id: User.all.sample.id, description: "Make the most of your time in the city that never sleeps on a guided tour of NYC’s top attractions. Travel by both boat (seasonal) and bus as you swing by the 9/11 Memorial, Central Park, Rockefeller Center and more. Then hop aboard a luxury boat for a sightseeing cruise past the Statue of Liberty and Ellis Island, complete with stunning views of the world-famous skyline and Brooklyn Bridge.", category: "Outdoors")
Event.create(name: "Coney Island Beach & Boardwalk", price: 0, date: "July 2, 2021", time: "11AM", location: "Starting @ Nathan's Famous Hotdogs", image: "https://brooklyneagle.com/wp-content/uploads/2019/08/5-Wonder-Wheel-August-2019-photo-4-by-Lore-Croghan-1-1024x627.jpg", user_id: User.all.sample.id, description: "Find courts for beach volleyball, handball, and basketball as well as playgrounds, amusement rides at Luna Park and the New York Aquarium.", category: "Outdoors")
Event.create(name: "Pokemon Battle League", price: 32, date: "June 30, 2021", time: "3-5PM", location: "Virtual", image: "https://cdn.vox-cdn.com/thumbor/wOq9nk_tMh0Jpv3P_ernXyQoNw8=/0x0:2040x1360/1200x800/filters:focal(857x517:1183x843)/cdn.vox-cdn.com/uploads/chorus_image/image/66222640/gobattleleague_announcement_2.0.jpg", user_id: User.all.sample.id, description: "Our Pokémon Battle League program features live-action Pokémon battling in the style of the main series Pokémon video games. During our workshop, we will use an online Pokémon battle simulator to teach basic game strategies such as team composition, move selection, type advantages and more! Kids will then put their skills to the test in one-on-one duels with their peers and their counselors. Pokémon Battle League promotes skills and traits like critical thinking, mathematical and textual literacy, problem solving, sportsmanship, strategy, and value assessment.", category: "Games")
Event.create(name: "Clean my Mom's House", price: 10, date: "June 4, 2021", time: "2AM", location: "my mom's", image: "https://s22908.pcdn.co/wp-content/uploads/2020/02/google-maps-alternatives.jpg", user_id: User.all.sample.id, description: "Description: $10 for admission because my mom's dope. but seriously, i think there's a dead baby bear in the attic and whoever finds it gets to keep it.", category: "Personal")
Event.create(name: "Hotdog Eating Contest Watch Party", price: 10, date: "July 4, 2021", time: "12PM", location: "my house", image: "https://www.reviewjournal.com/wp-content/uploads/2018/04/10474927_web1_crop_hot-dog-contest_042217_gb_004.jpg", user_id: User.all.sample.id, description: "Watch the event of the year with me and my mom- we got a recliner and 2 sectionals. max capacity: 16 heads. Hotdogs will be provided, max 2 per person. BYOKetchup event.", category: "Food")


# Rsvp.create(status: "yes", user_id: User.all.sample.id, event_id: Event.all.sample.id)
Rsvp.create(status: "yes", user_id: User.all.sample.id, event_id: Event.all.sample.id)
# Rsvp.create(status: "yes", user_id: User.all.sample.id, event_id: Event.all.sample.id)
# Rsvp.create(status: "yes", user_id: User.all.sample.id, event_id: Event.all.sample.id)
# Rsvp.create(status: "yes", user_id: User.all.sample.id, event_id: Event.all.sample.id)
# Rsvp.create(status: "yes", user_id: User.all.sample.id, event_id: Event.all.sample.id)
# Rsvp.create(status: "yes", user_id: User.all.sample.id, event_id: Event.all.sample.id)
# Rsvp.create(status: "yes", user_id: User.all.sample.id, event_id: Event.all.sample.id)
# Rsvp.create(status: "yes", user_id: User.all.sample.id, event_id: Event.all.sample.id)
# Rsvp.create(status: "yes", user_id: User.all.sample.id, event_id: Event.all.sample.id)
# Rsvp.create(status: "yes", user_id: User.all.sample.id, event_id: Event.all.sample.id)
# Rsvp.create(status: "yes", user_id: User.all.sample.id, event_id: Event.all.sample.id)
# Rsvp.create(status: "yes", user_id: User.all.sample.id, event_id: Event.all.sample.id)
# Rsvp.create(status: "yes", user_id: User.all.sample.id, event_id: Event.all.sample.id)
# Rsvp.create(status: "yes", user_id: User.all.sample.id, event_id: Event.all.sample.id)
# Rsvp.create(status: "yes", user_id: User.all.sample.id, event_id: Event.all.sample.id)



