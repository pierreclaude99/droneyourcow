# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: "machin@bidule.com", password: "123456")

Drone.create(model: "Drone 1", autonomy: 30, maximum_distance: 10, carry_capacity: 1, delivery_price: 30, user: User.first)
Drone.create(model: "Drone 2", autonomy: 30, maximum_distance: 10, carry_capacity: 1, delivery_price: 30, user: User.first)
Drone.create(model: "Drone 3", autonomy: 30, maximum_distance: 10, carry_capacity: 1, delivery_price: 30, user: User.first)
Drone.create(model: "Drone 4", autonomy: 30, maximum_distance: 10, carry_capacity: 1, delivery_price: 30, user: User.first)
Drone.create(model: "Drone 5", autonomy: 30, maximum_distance: 10, carry_capacity: 1, delivery_price: 30, user: User.first)