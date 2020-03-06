require 'faker'
require "open-uri"

Availability.destroy_all
Review.destroy_all
Meeting.destroy_all
User.destroy_all

puts "x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x"
puts  "Start creation of the new database..."
puts "x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x"

puts "1. Old Database destroyed 👍"
puts "_______________________"

money = [0, 10_000, 100_000, 250_000, 500_000, 750_000, 1_000_000]

sectors = ["Agroalimentaire", "Banque / Assurance", " BTP / Matériaux de construction", "Chimie / Parachimie", "Commerce / Négoce / Distribution", "Édition / Communication / Multimédia", "Électronique / Électricité", "Études et conseils", "Industrie pharmaceutique", "Informatique / Télécoms", "Machines et équipements / Automobile", "Métallurgie / Travail du métal", "Plastique / Caoutchouc", "Services aux entreprises", "Textile / Habillement / Chaussure", "Transports / Logistique"]

distance = [10, 20, 30, 50, 100, 200]


file = URI.open('https://res.cloudinary.com/dqyyujlp1/image/upload/v1582637434/Olivier_Godard_g2kskd.png')
olivier_godard = User.new({
  first_name: "Olivier",
  last_name: "Godard",
  email: "olivier@foundaters.com",
  password: "aqwzsx",
  address: "1 Boulevard de Belleville, 75011 Paris",
  phone_number: "06 20 36 82 26",
  description: "Après 6 ans dans les énergies renouvelables en tant que responsable d'agence à gérer plannings, techniciens, fournisseurs et clients, je me suis lancé en parallèle de mon travail, dans l'aventure entrepreneuriale. Avec 3 associés, nous avons créer Captain Watch, une Appli pour les passionnés de films & séries. Malheureusement, faute de product market fit et donc de rétention, nous avons décidé de passer à autre chose, après près de 4 ans d'itération et d'apprentissage.",
  birth_date: Faker::Date.in_date_period(year: 1987, month: 9),
  linkedin: "https://www.linkedin.com/in/olivier-godard/",
  company_name: "Kinzoo",
  company_ca: money.sample,
  company_sector: sectors.sample,
  distance: distance.sample,
})
olivier_godard.photo.attach(io: file, filename: "#{olivier_godard.first_name}#{olivier_godard.last_name}.png", content_type: 'image/png')
olivier_godard.save!


file = URI.open('https://res.cloudinary.com/dqyyujlp1/image/upload/v1582637433/Guillaume_Protard_bdqsep.png')
guillaume_protard = User.new({
  first_name: "Guillaume",
  last_name: "Protard",
  email: "guillaume@foundaters.com",
  password: "aqwzsx",
  address: "88 bis Avenue Parmentier, 75011 Paris",
  phone_number: "06 56 44 82 89",
  description: "Hi, I'm here to become more familiar with the magic powering the web and all the apps we use everyday without even realizing it + meet and work with great people :)",
  birth_date: Faker::Date.in_date_period(year: 1990, month: 2),
  linkedin: "https://www.linkedin.com/in/guillaume-protard-38119132/",
  company_name: "Placid",
  company_ca: money.sample,
  company_sector: sectors.sample,
  distance: distance.sample,
})
guillaume_protard.photo.attach(io: file, filename: "#{guillaume_protard.first_name}#{guillaume_protard.last_name}.png", content_type: 'image/png')
guillaume_protard.save!


file = URI.open('https://res.cloudinary.com/dqyyujlp1/image/upload/v1582637434/Tom_Levy_lxr218.jpg')
tom_levy = User.new({
  first_name: "Tom",
  last_name: "Levy" ,
  email: "tom@foundaters.com",
  password: "aqwzsx" ,
  address: "Place Léon Blum, 130 Boulevard Voltaire, 75011 Paris",
  phone_number: "06 12 78 00 26",
  description: "Hey, i'm Tom! After a few years working as a sales in several start-up, and 2 entrepreneurship project, I plan to learn code, and would like to set up my own business. I'm passionate about tech, and how it's transforms our daily life.",
  birth_date: Faker::Date.in_date_period(year: 1989, month: 5),
  linkedin: "https://www.linkedin.com/in/tom-levy/",
  company_name: "Zap",
  company_ca: money.sample,
  company_sector: sectors.sample,
  distance: distance.sample,
})
tom_levy.photo.attach(io: file, filename: "#{tom_levy.first_name}#{tom_levy.last_name}.jpg", content_type: 'image/jpg')
tom_levy.save!


file = URI.open('https://res.cloudinary.com/dqyyujlp1/image/upload/v1582637434/Paul_Couzinet_skof0r.jpg')
paul_couzinet = User.new({
  first_name: "Paul",
  last_name: "Couzinet",
  email: "paul@foundaters.com",
  password: "aqwzsx",
  address: "1 Avenue Simon Bolivar, 75019 Paris",
  phone_number: "06 00 65 67 06",
  description: "Hi! I'm Paul, I am currently working at Phenix, a company that struggle against food waste. I work every day with developers and they made me want to join them working on our digital plateforme. Moreover, I want to learn technical skills in web development in order to maybe one day create my own start up.",
  birth_date: Faker::Date.in_date_period(year: 1992, month: 11),
  linkedin: "",
  company_name: "Loop",
  company_ca: money.sample,
  company_sector: sectors.sample,
  distance: distance.sample,
})
paul_couzinet.photo.attach(io: file, filename: "#{paul_couzinet.first_name}#{paul_couzinet.last_name}.jpg", content_type: 'image/jpg')
paul_couzinet.save!


# file = URI.open('https://res.cloudinary.com/dqyyujlp1/image/upload/v1582637434/Virginia_Atenza_kqahpz.jpg')
# virgini_atenza = User.new({
#   first_name: "Virginia",
#   last_name: "Atenza",
#   email: "virginia@foundaters.com",
#   password: "aqwzsx",
#   address: "7, Place Gambetta Face Mairie du, 75020 Paris",
#   phone_number: "07 98 36 56 32",
#   description: "En parallèle de mes études Universitaires en Lettres et Arts, j'ai suivi une formation de l'Acteur aux Cours Florent. Pendant un certain temps, j'ai allié mon métier de comédienne et divers emplois (Assistante d'Education, Professeure de théâtre, Conseillère en Insertion Professionnelle). Depuis 1 an j'ai entamé une reconversion professionnelle en tant que Développeuse Web.",
#   birth_date: Faker::Date.in_date_period(year: 1987, month: 6),
#   linkedin: "https://www.linkedin.com/in/virginia-atenza/",
#   company_name: Faker::Company.name,
#   company_ca: money.sample,
#   company_sector: sectors.sample,
#   distance: distance.sample,
# })
# virgini_atenza.photo.attach(io: file, filename: "#{virgini_atenza.first_name}#{virgini_atenza.last_name}.jpg", content_type: 'image/jpg')
# virgini_atenza.save!


file = URI.open('https://res.cloudinary.com/dqyyujlp1/image/upload/v1582637432/Astrid_Aubert_buddmf.jpg')
astrid_aubert = User.new({
  first_name: "Astrid",
  last_name: "Aubert",
  email: "astrid@foundaters.com",
  password: "aqwzsx",
  address: "29 Rue du Faubourg du Temple, 75010 Paris",
  phone_number: "07 78 36 32 01",
  description: "After working in an investment fund in London, last year I launched a business in the travel / tourism industry. I always wanted to start my own company. A few months ago, I decided to learn to code with Le Wagon to improve the business from a digital point of view !",
  birth_date: Faker::Date.in_date_period(year: 1989, month: 1),
  linkedin: "https://www.linkedin.com/in/astrid-aubert-27733328/",
  company_name: "Arengu",
  company_ca: money.sample,
  company_sector: sectors.sample,
  distance: distance.sample,
})
astrid_aubert.photo.attach(io: file, filename: "#{astrid_aubert.first_name}#{astrid_aubert.last_name}.jpg", content_type: 'image/jpg')
astrid_aubert.save!


file = URI.open('https://res.cloudinary.com/dqyyujlp1/image/upload/v1582637433/Karim_Azib_xrzq0w.png')
karim_azib = User.new({
  first_name: "Karim",
  last_name: "Azib",
  email: "karim@foundaters.com",
  password: "aqwzsx",
  address: "4 Boulevard Richard Lenoir, Place de la Bastille, 75011 Paris",
  phone_number: "06 44 99 43 26",
  description: "Worked as head of marketing in a Japanese startup and now aiming for new challenges! I am really excited to become a developper and would like to work as a freelance or maybe start my own project.",
  birth_date: Faker::Date.in_date_period(year: 1989, month: 9),
  linkedin: "https://www.linkedin.com/in/karim-azib/",
  company_name: "Passbase",
  company_ca: money.sample,
  company_sector: sectors.sample,
  distance: distance.sample,
})
karim_azib.photo.attach(io: file, filename: "#{karim_azib.first_name}#{karim_azib.last_name}.png", content_type: 'image/png')
karim_azib.save!


file = URI.open('https://res.cloudinary.com/dqyyujlp1/image/upload/v1582637432/Claire_Bauduin_dezkcw.jpg')
claire_bauduin = User.new({
  first_name: "Claire",
  last_name: "Bauduin",
  email: "claire@foundaters.com",
  password: "aqwzsx",
  address: "19 Place de la République, 75003 Paris",
  phone_number: "06 72 52 87 26",
  description: "Employée chez Kactus depuis 3 ans en tant que Customer Success, j'ai décidé de rejoindre le Wagon pour devenir dev et changer d'équipe à mon retour !",
  birth_date: Faker::Date.in_date_period(year: 1995, month: 5),
  linkedin: "https://www.linkedin.com/in/claire-bauduin-7a8a3a87/",
  company_name: "Holygram",
  company_ca: money.sample,
  company_sector: sectors.sample,
  distance: distance.sample,
})
claire_bauduin.photo.attach(io: file, filename: "#{claire_bauduin.first_name}#{claire_bauduin.last_name}.jpg", content_type: 'image/jpg')
claire_bauduin.save!


# file = URI.open('https://res.cloudinary.com/dqyyujlp1/image/upload/v1582637433/Laurent_Binder_pndszh.jpg')
# laurent_binder = User.new({
#   first_name: "Laurent",
#   last_name: "Binder",
#   email: "laurent@foundaters.com",
#   password: "aqwzsx",
#   address: "196, Avenue Secrétan, Boulevard de la Villette, 75019 Paris",
#   phone_number: "06 91 83 55 22",
#   description: "I've worked as a sound engineer for many years, recording and mixing albums. From now on, I would like to learn some coding and be able to join a dev team to work in the digital industry.",
#   birth_date: Faker::Date.in_date_period(year: 1979, month: 12),
#   linkedin: "https://www.linkedin.com/in/laurent-binder-805652174/",
#   company_name: Faker::Company.name,
#   company_ca: money.sample,
#   company_sector: sectors.sample,
#   distance: distance.sample,
# })
# laurent_binder.photo.attach(io: file, filename: '#{laurent_binder.first_name}#{laurent_binder.last_name}.jpg', content_type: 'image/jpg')
# laurent_binder.save!


file = URI.open('https://res.cloudinary.com/dqyyujlp1/image/upload/v1582637435/Xavier_Blanchy_tnc71p.png')
xavier_blanchy = User.new({
  first_name: "Xavier",
  last_name: "Blanchy",
  email: "xavier@foundaters.com",
  password: "aqwzsx",
  address: "80 Rue Traversière, 75012 Paris",
  phone_number: "06 99 36 87 56",
  description: "After working 3 years in Italy, I wanted to create my own business. In order to launch myself in this new I need to learn about code to help a developer in his task. People that have done the Wagon have strongly advised me to join the ship. So here I am :)",
  birth_date: Faker::Date.in_date_period(year: 1990, month: 9),
  linkedin: "https://www.linkedin.com/in/xavier-blanchy-b0546aa9/",
  company_name: "Hyperlog",
  company_ca: money.sample,
  company_sector: sectors.sample,
  distance: distance.sample,
})
xavier_blanchy.photo.attach(io: file, filename: "#{xavier_blanchy.first_name}#{xavier_blanchy.last_name}.png", content_type: 'image/png')
xavier_blanchy.save!


# file = URI.open('https://res.cloudinary.com/dqyyujlp1/image/upload/v1582637432/Edouard_Castelnau_fvho13.jpg')
# edouard_castelnau = User.new({
#   first_name: "Edouard",
#   last_name: "Castelnau",
#   email: "edouard@foundaters.com",
#   password: "aqwzsx",
#   address: "141 Boulevard de Sébastopol, 75002 Paris",
#   phone_number: "06 66 78 09 11",
#   description: "Après avoir travaillé dans de nombreux milieux différents (scolaire, cinéma, restauration etc.), je souhaite me reconvertir dans le développement web car j'estime que c'est un secteur d'avenir.",
#   birth_date: Faker::Date.in_date_period(year: 1990, month: 3),
#   linkedin: "",
#   company_name: Faker::Company.name,
#   company_ca: money.sample,
#   company_sector: sectors.sample,
#   distance: distance.sample,
# })
# edouard_castelnau.photo.attach(io: file, filename: "#{edouard_castelnau.first_name}#{edouard_castelnau.last_name}.jpg", content_type: 'image/jpg')
# edouard_castelnau.save!


file = URI.open('https://res.cloudinary.com/dqyyujlp1/image/upload/v1582637433/Nicolas_Chardeau_qg7ioo.jpg')
nicolas_chardeau = User.new({
  first_name: "Nicolas",
  last_name: "Chardeau",
  email: "nicolas@foundaters.com",
  password: "aqwzsx",
  address: "116 Boulevard Diderot, 75012 Paris",
  phone_number: "06 56 99 82 32",
  description: "Hi , i was a salesman and after many years, i decided to change : I want to learn code for my new career. I like tech, motorcycle, cinema, sushi and music.....",
  birth_date: Faker::Date.in_date_period(year: 1985, month: 3),
  linkedin: "https://www.linkedin.com/in/nicolas-chardeau-bb5992a0/",
  company_name: "Gregor",
  company_ca: money.sample,
  company_sector: sectors.sample,
  distance: distance.sample,
})
nicolas_chardeau.photo.attach(io: file, filename: "#{nicolas_chardeau.first_name}#{nicolas_chardeau.last_name}.jpg", content_type: 'image/jpg')
nicolas_chardeau.save!


file = URI.open('https://res.cloudinary.com/dqyyujlp1/image/upload/v1582637432/Euge%CC%81nie_Coisne_v7aoqy.jpg')
eugenie_coisne = User.new({
  first_name: "Eugénie",
  last_name: "Coisne",
  email: "eugenie@foundaters.com",
  password: "aqwzsx",
  address: "5 Rue du Renard, 75004 Paris",
  phone_number: "06 89 36 82 11",
  description: "After 4 years in project management in advertising, i have decided to quit for new adventures. I'm about to launch my marketplace this year. I join Le Wagon as a student to develop coding skills for my project and, who knows, meet my future associate ;)",
  birth_date: Faker::Date.in_date_period(year: 1990, month: 9),
  linkedin: "https://www.linkedin.com/in/eugeniecoisne/",
  company_name: "Jeu de Mains",
  company_ca: money.sample,
  company_sector: sectors.sample,
  distance: distance.sample,
})
eugenie_coisne.photo.attach(io: file, filename: "#{eugenie_coisne.first_name}#{eugenie_coisne.last_name}.jpg", content_type: 'image/jpg')
eugenie_coisne.save!


# file = URI.open('https://res.cloudinary.com/dqyyujlp1/image/upload/v1582637433/Maude_Couturier_o78cal.jpg')
# maude_couturier = User.new({
#   first_name: "Maude",
#   last_name: "Couturier",
#   email: "maude@foundaters.com",
#   password: "aqwzsx",
#   address: "89 Rue Réaumur, 75002 Paris",
#   phone_number: "06 90 36 39 88",
#   description: "I worked as a consultant for 6 years in Montreal, New York and Paris. I started in finance and transitioned to a manager position at Deloitte's Digital Factory. Working with developers and PM gave me a taste of what I was missing in the tech industry. I decided to join le Wagon to learn how to code and become a product manager, get to know startups and meet new people !",
#   birth_date: Faker::Date.in_date_period(year: 1991, month: 4),
#   linkedin: "https://www.linkedin.com/in/maude-couturier-538403a3/",
#   company_name: Faker::Company.name,
#   company_ca: money.sample,
#   company_sector: sectors.sample,
#   distance: distance.sample,
# })
# maude_couturier.photo.attach(io: file, filename: "#{maude_couturier.first_name}#{maude_couturier.last_name}.jpg", content_type: 'image/jpg')
# maude_couturier.save!


file = URI.open('https://res.cloudinary.com/dqyyujlp1/image/upload/v1582637435/Benjamin_Crot_fhbvb7.png')
benjamin_crot = User.new({
  first_name: "Benjamin",
  last_name: "Crot",
  email: "benjamin@foundaters.com",
  password: "aqwzsx",
  address: "67 Boulevard Davout, 75020 Paris",
  phone_number: "06 34 65 82 88",
  description: "After a law degree and a business school, I worked for a startup in Station F as a sales. Then I realized that I was really motivated to create my own startup. Without knowledge in coding, it's difficult to launch a tech company so I choose to join Le Wagon.",
  birth_date: Faker::Date.in_date_period(year: 1992, month: 7),
  linkedin: "https://www.linkedin.com/in/benjamin-crot-116361109/",
  company_name: "Playhunt",
  company_ca: money.sample,
  company_sector: sectors.sample,
  distance: distance.sample,
})
benjamin_crot.photo.attach(io: file, filename: "#{benjamin_crot.first_name}#{benjamin_crot.last_name}.png", content_type: 'image/png')
benjamin_crot.save!


file = URI.open('https://res.cloudinary.com/dqyyujlp1/image/upload/v1582637434/Swann_Culioli_lokdp1.jpg')
swann_culioli = User.new({
  first_name: "Swann",
  last_name: "Culioli",
  email: "swann@foundaters.com",
  password: "aqwzsx",
  address: "12 Rue Berger, 75001 Paris",
  phone_number: "06 10 36 65 30",
  description: "Hi ! I'm 22, from Corsica and member of the #350 batch at Le Wagon Paris !",
  birth_date: Faker::Date.in_date_period(year: 1995, month: 6),
  linkedin: "https://www.linkedin.com/in/swann-c-3093121a1/",
  company_name: "Kitemaker",
  company_ca: money.sample,
  company_sector: sectors.sample,
  distance: distance.sample,
})
swann_culioli.photo.attach(io: file, filename: "#{swann_culioli.first_name}#{swann_culioli.last_name}.jpg", content_type: 'image/jpg')
swann_culioli.save!


file = URI.open('https://res.cloudinary.com/dqyyujlp1/image/upload/v1582637433/Julie_Dakoure%CC%81_rdocyk.jpg')
julie_dakoure = User.new({
  first_name: "Julie",
  last_name: "Dakouré",
  email: "julie@foundaters.com",
  password: "aqwzsx",
  address: "2 Boulevard Poissonnière, 75009 Paris",
  phone_number: "06 82 87 82 00",
  description: "Worked in marketing digital, I want to learn how to code to acquire new skills and to have a better understanding of tech related industries.",
  birth_date: Faker::Date.in_date_period(year: 1994, month: 8),
  linkedin: "https://www.linkedin.com/in/julie-dakour%C3%A9/",
  company_name: "Honey & Home",
  company_ca: money.sample,
  company_sector: sectors.sample,
  distance: distance.sample,
})
julie_dakoure.photo.attach(io: file, filename: "#{julie_dakoure.first_name}#{julie_dakoure.last_name}.jpg", content_type: 'image/jpg')
julie_dakoure.save!


file = URI.open('https://res.cloudinary.com/dqyyujlp1/image/upload/v1582637432/Fabien_Davy_pgrpus.jpg')
fabien_davy = User.new({
  first_name: "Fabien",
  last_name: "Davy",
  email: "fabien@foundaters.com",
  password: "aqwzsx",
  address: "49 Rue Belgrand, 75020 Paris",
  phone_number: "07 82 36 55 67",
  description: "I worked for 4 years in a studies office and I have been learning to code by myself next to this job. As I was learning more about coding, I noticed that it was my passion and wanted to make this my job. So, I left my job to become a web developper and I would like to work for a tech company where I could learn even more thanks to other developper.",
  birth_date: Faker::Date.in_date_period(year: 1993, month: 11),
  linkedin: "https://www.linkedin.com/in/fabien-davy-6651781a1/",
  company_name: "Spectroom",
  company_ca: money.sample,
  company_sector: sectors.sample,
  distance: distance.sample,
})
fabien_davy.photo.attach(io: file, filename: "#{fabien_davy.first_name}#{fabien_davy.last_name}.jpg", content_type: 'image/jpg')
fabien_davy.save!


file = URI.open('https://res.cloudinary.com/dqyyujlp1/image/upload/v1582637434/Paul_Thore%CC%81_mbmain.jpg')
paul_de_thore = User.new({
  first_name: "Paul",
  last_name: "De Thoré",
  email: "pauldethore@foundaters.com",
  password: "aqwzsx",
  address: "17 Rue de l'Arc en Ciel, 75001 Paris",
  phone_number: "06 44 78 00 23",
  description: "Je suis diplômé d'une école de commerce et responsable marketing chez Abritel du groupe Expedia depuis 3 ans. Au contact de profils techs sans toutefois pouvoir m'y plonger, je fais le wagon pour approfondir mes connaissances techniques et élargir mes horizons. Je suis à la recherche de porteur de projets pour pourquoi me lancer dans l'aventure entreprenariale!",
  birth_date: Faker::Date.in_date_period(year: 1988, month: 2),
  linkedin: "https://www.linkedin.com/in/paul-de-thore/",
  company_name: "Apollo",
  company_ca: money.sample,
  company_sector: sectors.sample,
  distance: distance.sample,
})
paul_de_thore.photo.attach(io: file, filename: "#{paul_de_thore.first_name}#{paul_de_thore.last_name}.jpg", content_type: 'image/jpg')
paul_de_thore.save!


file = URI.open('https://res.cloudinary.com/dqyyujlp1/image/upload/v1582637433/Hugo_Dornbierer_kexxtg.jpg')
hugo_dornbierer = User.new({
  first_name: "Hugo",
  last_name: "Dornbierer",
  email: "hugo@foundaters.com",
  password: "aqwzsx",
  address: "12 Rue du Faubourg Saint-Antoine, 75012 Paris",
  phone_number: "06 77 99 82 56",
  description: "I am a Product Data Analyst @ Getaround in Paris. I always, deep down, wanted to become a developer and I'm doing Le Wagon to become one at my current company.",
  birth_date: Faker::Date.in_date_period(year: 1985, month: 8),
  linkedin: "https://www.linkedin.com/in/hdornbierer/",
  company_name: "Insite",
  company_ca: money.sample,
  company_sector: sectors.sample,
  distance: distance.sample,
})
hugo_dornbierer.photo.attach(io: file, filename: "#{hugo_dornbierer.first_name}#{hugo_dornbierer.last_name}.jpg", content_type: 'image/jpg')
hugo_dornbierer.save!


puts "_______________________"
puts "2. 20x New Users created 👍"
puts "_______________________"

meeting_place = [{
  name: "Inside bar paris",
  address: "14 Rue Claude Tillier, 75012 Paris",
  latitude: 48.862725,
  longitude: 2.287592
  },
{
  name: "Le Tagada Bar",
  address: "40 Rue des Trois Frères, 75018 Paris",
  latitude: 48.88524,
  longitude: 2.3396729
  },
{
  name: "Le Bar Botaniste",
  address: "10 Avenue d'Iéna, 75116 Paris",
  latitude: 48.8637194,
  longitude: 2.2934262
  },
{
  name: "Le Social Bar",
  address: "25 Rue Villiot, 75012 Paris",
  latitude: 48.8418037,
  longitude: 2.3755198
  },
{
  name: "Le Renard Bar",
  address: "38 Rue de Sambre-et-Meuse, 75010 Paris",
  latitude: 48.8745045,
  longitude: 2.3729738
  },
{
  name: "Lulu White Drinking Club",
  address: "12 Rue Frochot, 75009 Paris",
  latitude: 48.881636,
  longitude: 2.3374527
  },
{
  name: "Le Bar du Plaza Athénée",
  address: "Hôtel Plazza Athénée, 25 Avenue Montaigne, 75008 Paris",
  latitude: 48.86627960205078,
  longitude: 2.3042855262756348
  },
{
  name: "L'Ours Bar",
  address: "8 Rue de Paradis, 75010 Paris",
  latitude: 48.8745922,
  longitude: 2.3545035

}]

status = [1, 2, 3]
slot = ['breakfast', 'lunch', 'afterwork']

user_1 = [olivier_godard, guillaume_protard, tom_levy, paul_couzinet, eugenie_coisne, karim_azib, xavier_blanchy, benjamin_crot]

user_2 = [paul_de_thore, hugo_dornbierer, astrid_aubert, claire_bauduin, julie_dakoure, swann_culioli, fabien_davy, nicolas_chardeau]

3.times do
  meeting = Meeting.new
  meeting.date = Faker::Date.in_date_period(month: 2)

  place = meeting_place.sample

  meeting.venue_name = place[:name]
  meeting.venue_address = place[:address]
  meeting.venue_latitude = place[:latitude]
  meeting.venue_longitude = place[:longitude]
  meeting.slot = slot.sample

  meeting.status = status.sample

  meeting.user_one = User.find_by(email: 'tom@foundaters.com')
  meeting.user_two = user_2.sample

  meeting.save!
end

puts "_______________________"
puts "2. 50x New Meetings created 👍"
puts "_______________________"

reviews = [
"Aiming for a top job in the organization. He sets very high standards, aware that this will bring attention and promotion. Intellectually versatile. When a topic is unfamiliar or new concepts are put forward, he listens, learns and adjusts quickly, and is soon making a full and useful contribution to the conversation.",

"Responds to setbacks or adversity with redoubled vigour and enthusiasm. Will never accept that defeat is a foregone conclusion, and inspires others to stay positive and fight on. Intellectually versatile. When a topic is unfamiliar or new concepts are put forward, he listens, learns and adjusts quickly, and is soon making a full and useful contribution to the conversation.",

"Regularly produces creative, original ideas, plans, products or methods, well-attuned to the needs and capabilities of the organization, and producing clear benefits. Intellectually versatile. When a topic is unfamiliar or new concepts are put forward, he listens, learns and adjusts quickly, and is soon making a full and useful contribution to the conversation.",

"Always eager to take on a new task, whether hard or simple, and tackles it diligently, without question or complaint. This positive attitude inspires others too. Intellectually versatile. When a topic is unfamiliar or new concepts are put forward, he listens, learns and adjusts quickly, and is soon making a full and useful contribution to the conversation.",

"Always eager to take on a new task, whether hard or simple, and tackles it diligently, without question or complaint. This positive attitude inspires others too. he prefers own company to that of other people.",

"A natural leader. People tend to listen and follow his example and guidance. he is chosen as leader without making an issue of leadership. Always eager to take on a new task, whether hard or simple, and tackles it diligently, without question or complaint. This positive attitude inspires others too.",

"Always eager to take on a new task, whether hard or simple, and tackles it diligently, without question or complaint. This positive attitude inspires others too. Late on fewer than 3 occasions in 6 months.",

"Always contributes vigorously to the efforts of the team, whether as a leader or a team member. Understands own weaknesses ond others’ strengths and goes to the right people for help. Sympathetically helps others to address their weaknesses. Always eager to take on a new task, whether hard or simple, and tackles it diligently, without question or complaint. This positive attitude inspires others too.",

"Understands the importance of confidentiality, and can always be trusted not to reveal confidential or private information to unauthorized parties. Always contributes vigorously to the efforts of the team, whether as a leader or a team member. Understands own weaknesses ond others’ strengths and goes to the right people for help. Sympathetically helps others to address their weaknesses.",

"A self-starter – someone who always finds out the right thing to do and gets on with the job. If a manager has given no guidance he will still take appropriate action. If the required tools are unavailable, he is able to improvise. Always contributes vigorously to the efforts of the team, whether as a leader or a team member. Understands own weaknesses ond others’ strengths and goes to the right people for help. Sympathetically helps others to address their weaknesses."]

  meeting_ids = (Meeting.first.id..Meeting.last.id).to_a

  users = [olivier_godard, guillaume_protard, tom_levy, paul_couzinet, karim_azib, xavier_blanchy, nicolas_chardeau, benjamin_crot, paul_de_thore, hugo_dornbierer, astrid_aubert, claire_bauduin, eugenie_coisne, julie_dakoure,swann_culioli, fabien_davy]



  dispo = [true, false]
  User.all.each do |user|
    user.availabilities.each do |avail|
      avail.update(breakfast: false, lunch: dispo.sample, afterwork: dispo.sample)
    end
  end

  User.find_by(email: 'eugenie@foundaters.com').availabilities.each do |avail|
    avail.update(breakfast: true, lunch: dispo.sample, afterwork: dispo.sample)
  end

  User.find_by(email: 'tom@foundaters.com').availabilities.each do |avail|
    avail.update(breakfast: false, lunch: false, afterwork: false)
  end

puts "_______________________"
puts "3. User availabilities created 👍"
puts "_______________________"


# 50.times do
#   review = Review.new
#   review.content = reviews.sample
#   review.rating = rand(1..5)
#   review.meeting = Meeting.find(meeting_ids.first)
#   meeting_ids.delete_at(0)
#   review.user = users.sample
#   review.save!
# end

puts "_______________________"
puts "4. 50x New Reviews created 👍"
puts "_______________________"

puts "x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x"
puts    "New database created with sucess!"
puts "x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x"
