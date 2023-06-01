# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Offer.destroy_all
User.destroy_all

julien = User.create!(first_name: "julien", last_name: "Fonteneau", phone_number: "06 66 66 66 66 ", email: "julien@gmail.com", address: "123 rue de rivoli 75001 Paris", password: "CSCJDS")

rayan = User.create!(first_name: "rayan", last_name: "Anser", phone_number: "06 66 67 89 34 ", email: "ray@gmail.com", address: "69 rue de paris 75003 Paris", password: "CSFEDFDVDS")

max = User.create!(first_name: "max", last_name: "Audibert", phone_number: "06 66 66 12 66 ", email: "max@gmail.com", address: "18 rue de londres 75017 Paris", password: "AEARFEFDS")

mihaja = User.create!(first_name: "mihaja", last_name: "R", phone_number: "06 66 13 66 66 ", email: "mihr@gmail.com", address: "12 rue de madrid 75018 Paris", password: "VDVDVIZORFDS")

paul = User.create!(first_name: "paul", last_name: "R", phone_number: "06 66 13 99 02 ", email: "paul@gmail.com", address: "56 rue de madrid 75018 Paris", password: "VEZRFOJVFDRFDS")

nadia = User.create!(first_name: "nadia", last_name: "B", phone_number: "06 34 13 66 66 ", email: "nadia@gmail.com", address: "13 rue de madrid 75003 Paris", password: "VDFFVDVZFRFDS")

nicolas = User.create!(first_name: "nicolas", last_name: "Z", phone_number: "06 12 13 66 66 ", email: "nico@gmail.com", address: "132 rue de copenhague 75007 Paris", password: "ZAZERZVDVIZORFDS")

guilhem = User.create!(first_name: "guilhem", last_name: "M", phone_number: "06 99 13 66 66 ", email: "guilhem@gmail.com", address: "234 rue de lisbon 75017 Paris", password: "CVNCDEIZRFVDVIZORFDS")


p "created users"

boudin = Offer.create(
  location: "Paris",
  food_category: "French",
  description: "from Top Chef 2016",
  availability: true,
  capacity: 20,
  name: "Boudin & Ravioles",
  price: 300
)
img = File.open("app/assets/images/ravioles1.jpg")
boudin.picture.attach(io: img, filename: "ravioles1.jpg", content_type: "image/jpg")
img = File.open("app/assets/images/ravioles2.jpg")
boudin.picture.attach(io: img, filename: "ravioles2.jpg", content_type: "image/jpg")
img = File.open("app/assets/images/ravioles3.jpg")
boudin.picture.attach(io: img, filename: "ravioles3.jpg", content_type: "image/jpg")

boudin.user = julien
boudin.save!

mawashigiri = Offer.create(
  location: "Paris",
  food_category: "Japanese",
  description: "trained by the best japanese masters",
  availability: false,
  capacity: 15,
  name: "Mawashigiri",
  price: 400
)
img = File.open("app/assets/images/sushi1.jpg")
mawashigiri.picture.attach(io: img, filename: "sushi1.jpeg", content_type: "image/jpg")
img = File.open("app/assets/images/sushi2.jpg")
mawashigiri.picture.attach(io: img, filename: "sushi2.jpeg", content_type: "image/jpg")
img = File.open("app/assets/images/sushi3.jpg")
mawashigiri.picture.attach(io: img, filename: "sushi3.jpeg", content_type: "image/jpg")

mawashigiri.user = rayan
mawashigiri.save!

pizzananas = Offer.create(
  location: "Paris",
  food_category: "Italian",
  description: "El chefo di Roma",
  availability: true,
  capacity: 12,
  name: "Pizzananas",
  price: 100
)
img = File.open("app/assets/images/pizza1.jpg")
pizzananas.picture.attach(io: img, filename: "pizza1.jpg", content_type: "image/jpg")
img = File.open("app/assets/images/pizza2.jpg")
pizzananas.picture.attach(io: img, filename: "pizza2.jpg", content_type: "image/jpg")
img = File.open("app/assets/images/pizza3.jpg")
pizzananas.picture.attach(io: img, filename: "pizza3.jpg", content_type: "image/jpg")

pizzananas.user = max
pizzananas.save!

bocuse = Offer.create(
  location: "Paris",
  food_category: "Italian",
  description: "Master",
  availability: true,
  capacity: 20,
  name: "Coquillettes truffle",
  price: 900
)
bocuse.user = mihaja
bocuse.save!

img = File.open("app/assets/images/coquillettes1.jpg")
bocuse.picture.attach(io: img, filename: "coquillettes1.jpg", content_type: "image/jpg")
img = File.open("app/assets/images/coquillettes2.jpg")
bocuse.picture.attach(io: img, filename: "coquillettes2.jpg", content_type: "image/jpg")
img = File.open("app/assets/images/coquillettes3.jpg")
bocuse.picture.attach(io: img, filename: "coquillettes3.jpg", content_type: "image/jpg")

bocuse.user = max
bocuse.save!

robuchon = Offer.create(
  location: "Paris",
  food_category: "French",
  description: "Multi stars",
  availability: true,
  capacity: 20,
  name: "Gastronomie at home",
  price: 300
)

img = File.open("app/assets/images/gastro1.jpg")
robuchon.picture.attach(io: img, filename: "gastro1.jpg", content_type: "image/jpg")
img = File.open("app/assets/images/gastro2.jpg")
robuchon.picture.attach(io: img, filename: "gastro2.jpg", content_type: "image/jpg")
img = File.open("app/assets/images/gastro3.jpg")
robuchon.picture.attach(io: img, filename: "gastro3.jpg", content_type: "image/jpg")


robuchon.user = paul
robuchon.save!

etchebest = Offer.create(
  location: "Paris",
  food_category: "American",
  description: "From South-West",
  availability: true,
  capacity: 20,
  name: "C'est croquant, c'est fondant",
  price: 300
)

img = File.open("app/assets/images/ouest1.jpg")
etchebest.picture.attach(io: img, filename: "ouest1.jpg", content_type: "image/jpg")
img = File.open("app/assets/images/ouest2.jpg")
etchebest.picture.attach(io: img, filename: "ouest2.jpg", content_type: "image/jpg")
img = File.open("app/assets/images/ouest3.jpg")
etchebest.picture.attach(io: img, filename: "ouest3.jpg", content_type: "image/jpg")


etchebest.user = nadia
etchebest.save!

pic = Offer.create(
  location: "Paris",
  food_category: "African",
  description: "Best Chef in Le Marais",
  availability: true,
  capacity: 20,
  name: "Ciboulette & Arbalette",
  price: 300
)

img = File.open("app/assets/images/ciboulette1.jpg")
pic.picture.attach(io: img, filename: "ciboulette1.jpg", content_type: "image/jpg")
img = File.open("app/assets/images/ciboulette2.jpg")
pic.picture.attach(io: img, filename: "ciboulette2.jpg", content_type: "image/jpg")
img = File.open("app/assets/images/ciboulette3.jpg")
pic.picture.attach(io: img, filename: "ciboulette3.jpg", content_type: "image/jpg")


pic.user = nicolas
pic.save!

lignac = Offer.create(
  location: "Paris",
  food_category: "Belgium",
  description: "Bistro owner",
  availability: true,
  capacity: 20,
  name: "Harengs Pomme à l'huile",
  price: 300
)

img = File.open("app/assets/images/harengs1.jpg")
lignac.picture.attach(io: img, filename: "harengs1.jpg", content_type: "image/jpg")
img = File.open("app/assets/images/harengs2.jpg")
lignac.picture.attach(io: img, filename: "harengs2.jpg", content_type: "image/jpg")
img = File.open("app/assets/images/harengs3.jpg")
lignac.picture.attach(io: img, filename: "harengs3.jpg", content_type: "image/jpg")



lignac.user = guilhem
lignac.save!
