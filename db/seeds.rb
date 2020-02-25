# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
User.destroy_all
# User.destroy_all
# Je ne peux pas destroy a cause des dependant destroy ???
puts "x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x"
puts "Start creation of the new database..."
puts "x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x"
puts "1. Old Database destroyed :+1:"
puts "_______________________"
money = [0, 10_000, 100_000, 250_000, 500_000, 750_000, 1_000_000]
sectors = ["Agroalimentaire", "Banque / Assurance", " BTP / Matériaux de construction", "Chimie / Parachimie", "Commerce / Négoce / Distribution", "Édition / Communication / Multimédia", "Électronique / Électricité", "Études et conseils", "Industrie pharmaceutique", "Informatique / Télécoms", "Machines et équipements / Automobile", "Métallurgie / Travail du métal", "Plastique / Caoutchouc", "Services aux entreprises", "Textile / Habillement / Chaussure", "Transports / Logistique"]
distance = [10, 20, 30, 50, 100, 200]
olivier_godard = User.create!({
  first_name: "Olivier",
  last_name: "Godard",
  email: "olivier@foundaters.com",
  password: "aqwzsx",
  address: "1 Boulevard de Belleville, 75011 Paris",
  phone_number: "06 20 36 82 26",
  description: "Après 6 ans dans les énergies renouvelables en tant que responsable d’agence à gérer plannings, techniciens, fournisseurs et clients, je me suis lancé en parallèle de mon travail, dans l’aventure entrepreneuriale. Avec 3 associés, nous avons créer Captain Watch, une Appli pour les passionnés de films & séries. Malheureusement, faute de product market fit et donc de rétention, nous avons décidé de passer à autre chose, après près de 4 ans d’itération et d’apprentissage.",
  birth_date: Faker::Date.in_date_period(year: 1987, month: 9),
  linkedin: "https://www.linkedin.com/in/olivier-godard/",
  company_name: Faker::Company.name,
  company_ca: money.sample,
  company_sector: sectors.sample,
  distance: distance.sample,
})
guillaume_protard = User.create!({
  first_name: "Guillaume",
  last_name: "Protard",
  email: "guillaume@foundaters.com",
  password: "aqwzsx",
  address: "88 bis Avenue Parmentier, 75011 Paris",
  phone_number: "06 56 44 82 89",
  description: "Hi, I’m here to become more familiar with the magic powering the web and all the apps we use everyday without even realizing it + meet and work with great people :)",
  birth_date: Faker::Date.in_date_period(year: 1990, month: 2),
  linkedin: "https://www.linkedin.com/in/guillaume-protard-38119132/",
  company_name: Faker::Company.name,
  company_ca: money.sample,
  company_sector: sectors.sample,
  distance: distance.sample,
})
tom_levy = User.create!({
  first_name: "Tom",
  last_name: "Levy" ,
  email: "tom@foundaters.com",
  password: "aqwzsx" ,
  address: "Place Léon Blum, 130 Boulevard Voltaire, 75011 Paris",
  phone_number: "06 12 78 00 26",
  description: "Hey, i’m Tom! After a few years working as a sales in several start-up, and 2 entrepreneurship project, I plan to learn code, and would like to set up my own business. I’m passionate about tech, and how it’s transforms our daily life.",
  birth_date: Faker::Date.in_date_period(year: 1989, month: 5),
  linkedin: "https://www.linkedin.com/in/tom-levy/",
  company_name: Faker::Company.name,
  company_ca: money.sample,
  company_sector: sectors.sample,
  distance: distance.sample,
})
paul_couzinet = User.create!({
  first_name: "Paul",
  last_name: "Couzinet",
  email: "paul@foundaters.com",
  password: "aqwzsx",
  address: "1 Avenue Simon Bolivar, 75019 Paris",
  phone_number: "06 00 65 67 06",
  description: "Hi! I’m Paul, I am currently working at Phenix, a company that struggle against food waste. I work every day with developers and they made me want to join them working on our digital plateforme. Moreover, I want to learn technical skills in web development in order to maybe one day create my own start up.",
  birth_date: Faker::Date.in_date_period(year: 1992, month: 11),
  linkedin: "",
  company_name: Faker::Company.name,
  company_ca: money.sample,
  company_sector: sectors.sample,
  distance: distance.sample,
})
virgini_atenza = User.create!({
  first_name: "Virginia",
  last_name: "Atenza",
  email: "virginia@foundaters.com",
  password: "aqwzsx",
  address: "7, Place Gambetta Face Mairie du, 75020 Paris",
  phone_number: "07 98 36 56 32",
  description: "En parallèle de mes études Universitaires en Lettres et Arts, j’ai suivi une formation de l’Acteur aux Cours Florent. Pendant un certain temps, j’ai allié mon métier de comédienne et divers emplois (Assistante d’Education, Professeure de théâtre, Conseillère en Insertion Professionnelle). Depuis 1 an j’ai entamé une reconversion professionnelle en tant que Développeuse Web.",
  birth_date: Faker::Date.in_date_period(year: 1987, month: 6),
  linkedin: "https://www.linkedin.com/in/virginia-atenza/",
  company_name: Faker::Company.name,
  company_ca: money.sample,
  company_sector: sectors.sample,
  distance: distance.sample,
})
astrid_aubert = User.create!({
  first_name: "Astrid",
  last_name: "Aubert",
  email: "astrid@foundaters.com",
  password: "aqwzsx",
  address: "29 Rue du Faubourg du Temple, 75010 Paris",
  phone_number: "07 78 36 32 01",
  description: "After working in an investment fund in London, last year I launched a business in the travel / tourism industry. I always wanted to start my own company. A few months ago, I decided to learn to code with Le Wagon to improve the business from a digital point of view !",
  birth_date: Faker::Date.in_date_period(year: 1989, month: 1),
  linkedin: "https://www.linkedin.com/in/astrid-aubert-27733328/",
  company_name: Faker::Company.name,
  company_ca: money.sample,
  company_sector: sectors.sample,
  distance: distance.sample,
})
karim_azib = User.create!({
  first_name: "Karim",
  last_name: "Azib",
  email: "karim@foundaters.com",
  password: "aqwzsx",
  address: "4 Boulevard Richard Lenoir, Place de la Bastille, 75011 Paris",
  phone_number: "06 44 99 43 26",
  description: "Worked as head of marketing in a Japanese startup and now aiming for new challenges! I am really excited to become a developper and would like to work as a freelance or maybe start my own project.",
  birth_date: Faker::Date.in_date_period(year: 1989, month: 9),
  linkedin: "https://www.linkedin.com/in/karim-azib/",
  company_name: Faker::Company.name,
  company_ca: money.sample,
  company_sector: sectors.sample,
  distance: distance.sample,
})
claire_bauduin = User.create!({
  first_name: "Claire",
  last_name: "Bauduin",
  email: "claire@foundaters.com",
  password: "aqwzsx",
  address: "19 Place de la République, 75003 Paris",
  phone_number: "06 72 52 87 26",
  description: "Employée chez Kactus depuis 3 ans en tant que Customer Success, j’ai décidé de rejoindre le Wagon pour devenir dev et changer d’équipe à mon retour !",
  birth_date: Faker::Date.in_date_period(year: 1995, month: 5),
  linkedin: "https://www.linkedin.com/in/claire-bauduin-7a8a3a87/",
  company_name: Faker::Company.name,
  company_ca: money.sample,
  company_sector: sectors.sample,
  distance: distance.sample,
})
laurent_binder = User.create!({
  first_name: "Laurent",
  last_name: "Binder",
  email: "laurent@foundaters.com",
  password: "aqwzsx",
  address: "196, Avenue Secrétan, Boulevard de la Villette, 75019 Paris",
  phone_number: "06 91 83 55 22",
  description: "I’ve worked as a sound engineer for many years, recording and mixing albums. From now on, I would like to learn some coding and be able to join a dev team to work in the digital industry.",
  birth_date: Faker::Date.in_date_period(year: 1979, month: 12),
  linkedin: "https://www.linkedin.com/in/laurent-binder-805652174/",
  company_name: Faker::Company.name,
  company_ca: money.sample,
  company_sector: sectors.sample,
  distance: distance.sample,
})
xavier_blanchy = User.create!({
  first_name: "Xavier",
  last_name: "Blanchy",
  email: "xavier@foundaters.com",
  password: "aqwzsx",
  address: "80 Rue Traversière, 75012 Paris",
  phone_number: "06 99 36 87 56",
  description: "After working 3 years in Italy, I wanted to create my own business. In order to launch myself in this new I need to learn about code to help a developer in his task. People that have done the Wagon have strongly advised me to join the ship. So here I am :)",
  birth_date: Faker::Date.in_date_period(year: 1990, month: 9),
  linkedin: "https://www.linkedin.com/in/xavier-blanchy-b0546aa9/",
  company_name: Faker::Company.name,
  company_ca: money.sample,
  company_sector: sectors.sample,
  distance: distance.sample,
})
puts "_______________________"
puts "2. 10x New Users created :+1:"
puts "_______________________"
puts "x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x"
puts "New database created with sucess!"
puts "x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x"

