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

p "created users"

boudin = Offer.create(
  location: "Paris",
  description: "from Top Chef 2016",
  availability: true,
  capacity: 20,
  name: "Boudin & Ravioles",
  price: 300
  )

boudin.user = julien
boudin.save!

mawashigiri = Offer.create(
  location: "Paris",
  description: "trained by the best japanese masters",
  availability: false,
  capacity: 15,
  name: "Mawashigiri",
  price: 400
)

mawashigiri.user = rayan
mawashigiri.save!

pizzananas = Offer.create(
  location: "Paris",
  description: "el chefo di Roma",
  availability: true,
  capacity: 12,
  name: "Pizzananas",
  price: 100
  )

pizzananas.user = max
pizzananas.save!
