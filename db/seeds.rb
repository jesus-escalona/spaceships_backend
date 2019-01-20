# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ShipResource.destroy_all
Ship.destroy_all
Resource.destroy_all

ship1 = Ship.create(name: "MegaShip", health: 1000, color: "white")
ship2 = Ship.create(name: "Stars", health: 5000, color: "black")
ship3 = Ship.create(name: "BOYYY", health: 2000, color: "blue")
ship4 = Ship.create(name: "DOGESHIP", health: 1000000, color: "orange")
gun = Resource.create(resource_type: "Gun", level: 1)
relation = ShipResource.create(ship: ship1, resource: gun)