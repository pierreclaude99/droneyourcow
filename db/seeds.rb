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
