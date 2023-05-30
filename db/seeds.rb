# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
users = User.create([{ first_name: "Luc"}, { last_name: "Pointreverse"}, { phone_number: "06 66 66 66 66 "}, { email: "lucpointreverse@gmail.com"}, { addresse: "123 rue du pointmele 75012 Paris"}])
users = User.create([{ first_name: "Manon"}, { last_name: "Jamaisaleure"}, { phone_number: "06 76 53 56 76 "}, { email: "manonjamaisaleure@gmail.com"}, { addresse: "15 Bd du retard 75007 Paris"}])
users = User.create([{ first_name: "Vegeta"}, { last_name: "Algerien"}, { phone_number: "06 01 02 03 04 "}, { email: "vegetaalgerien@gmail.com"}, { addresse: "1 rue de L'Algerie 75010 Paris"}])

