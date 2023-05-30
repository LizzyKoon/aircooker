# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
users = User.create([{ first_name: "Luc"}, { last_name: "Pointreverse"}, { phone_number: "06 66 66 66 66 "}, { email: "lucpointreverse@gmail.com"}, { address: "123 rue du pointmele 75012 Paris"}])
users = User.create([{ first_name: "Manon"}, { last_name: "Jamaisaleure"}, { phone_number: "06 76 53 56 76 "}, { email: "manonjamaisaleure@gmail.com"}, { address: "15 Bd du retard 75007 Paris"}])
users = User.create([{ first_name: "Vegeta"}, { last_name: "Algerien"}, { phone_number: "06 01 02 03 04 "}, { email: "vegetaalgerien@gmail.com"}, { address: "1 rue de L'Algerie 75010 Paris"}])

offers = Offer.create([{
  location: "Paris",
  description: "from Top Chef 2016",
  availability: "y/n",
  capacity: 20,
  name: "Boudin & Ravioles",
  price: 300,
  }])

offers = Offer.create([{
  location: "Paris",
  description: "trained by the best japanese masters",
  availability: "y/n",
  capacity: 15,
  name: "Mawashigiri",
  price: 400,
  }])

offers = Offer.create([{
  location: "Paris",
  description: "el chefo di Roma",
  availability: "y/n",
  capacity: 12,
  name: "Pizzananas",
  price: 100,
  }])
