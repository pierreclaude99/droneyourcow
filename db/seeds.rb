# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user = User.first
ademola = Drone.new(model: 'XTR', autonomy: 4,  maximum_distance: 100, carry_capacity: 15, delivery_price: 50)
ademola.user = user
ademola.save!


User.create(email: "machin@bidule.com", password: "123456")

Drone.create(model: "Drone 1", autonomy: 30, maximum_distance: 10, carry_capacity: 1, delivery_price: 30, user: User.first)
Drone.create(model: "Drone 2", autonomy: 30, maximum_distance: 10, carry_capacity: 1, delivery_price: 30, user: User.first)
Drone.create(model: "Drone 3", autonomy: 30, maximum_distance: 10, carry_capacity: 1, delivery_price: 30, user: User.first)
Drone.create(model: "Drone 4", autonomy: 30, maximum_distance: 10, carry_capacity: 1, delivery_price: 30, user: User.first)
Drone.create(model: "Drone 5", autonomy: 30, maximum_distance: 10, carry_capacity: 1, delivery_price: 30, user: User.first)

time = Time.now
delivery_test = Delivery.new(delivery_time: time , delivery_address: "7 Rue de la Boetile 75008 Paris", user: User.first, description: "10:00", weight: 4, status: "Attente d'acceptation")
delivery_test.save!