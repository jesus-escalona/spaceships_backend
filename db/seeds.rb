# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ship.destroy_all
Score.destroy_all

ship1 = Ship.create(name: "MegaShip", health: 1000, color: "white")
ship2 = Ship.create(name: "Stars", health: 5000, color: "black")
ship3 = Ship.create(name: "BOYYY", health: 2000, color: "blue")
ship4 = Ship.create(name: "DOGESHIP", health: 10000, color: "orange")
score1 = Score.create(ship: ship1)
