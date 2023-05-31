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
  description: "from Top Chef 2016",
  availability: true,
  capacity: 20,
  name: "Boudin & Ravioles",
  price: 300,
  picture_url: "https://images.unsplash.com/photo-1549590143-d5855148a9d5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1364&q=80"
)

boudin.user = julien
boudin.save!

mawashigiri = Offer.create(
  location: "Paris",
  description: "trained by the best japanese masters",
  availability: false,
  capacity: 15,
  name: "Mawashigiri",
  price: 400,
  picture_url: "https://images.unsplash.com/photo-1549590143-d5855148a9d5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1364&q=80"
)

mawashigiri.user = rayan
mawashigiri.save!

pizzananas = Offer.create(
  location: "Paris",
  description: "el chefo di Roma",
  availability: true,
  capacity: 12,
  name: "Pizzananas",
  price: 100,
  picture_url: "https://images.unsplash.com/photo-1549590143-d5855148a9d5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1364&q=80"
)

pizzananas.user = max
pizzananas.save!

bocuse = Offer.create(
  location: "Paris",
  description: "Master",
  availability: true,
  capacity: 20,
  name: "Coquillettes truffle",
  price: 900,
  picture_url: "https://images.unsplash.com/photo-1549590143-d5855148a9d5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1364&q=80"
)

bocuse.user = mihaja
bocuse.save!

robuchon = Offer.create(
  location: "Paris",
  description: "Multi stars",
  availability: true,
  capacity: 20,
  name: "Gastronomie at home",
  price: 300,
  picture_url: "https://images.unsplash.com/photo-1549590143-d5855148a9d5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1364&q=80"
)

robuchon.user = paul
robuchon.save!

etchebest = Offer.create(
  location: "Paris",
  description: "from South-West",
  availability: true,
  capacity: 20,
  name: "C'est croquant, c'est fondant",
  price: 300,
  picture_url: "https://images.unsplash.com/photo-1549590143-d5855148a9d5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1364&q=80"
)

etchebest.user = nadia
etchebest.save!

pic = Offer.create(
  location: "Paris",
  description: "Best Chef in Le Marais",
  availability: true,
  capacity: 20,
  name: "Ciboulette & Arbalette",
  price: 300,
  picture_url: "https://images.unsplash.com/photo-1549590143-d5855148a9d5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1364&q=80"
)

pic.user = nicolas
pic.save!

lignac = Offer.create(
  location: "Paris",
  description: "bistro owner",
  availability: true,
  capacity: 20,
  name: "Harengs Pomme à l'huile",
  price: 300,
  picture_url: "https://images.unsplash.com/photo-1549590143-d5855148a9d5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1364&q=80"
)

lignac.user = guilhem
lignac.save!
