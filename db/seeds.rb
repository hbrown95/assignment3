# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all
Product.create!(name: 'Headphones', 
	description: 'These headphones provide the truest and purest sound quality on the market', 
	image: 'headphones.jpg', 
	price: 350.00)
Product.create!(name: 'Phone', 
	description: 'The HTC is a great phone for any user, with capabilities for advanced and casual users alike',
	image: 'phone.jpg', 
	price: 225.99)
Product.create!(name: 'Mouse', 
	description: 'A computer mouse is important to own if you want to quickly navigate a point-and-click interface', 
	image: 'mouse.jpg', 
	price: 49.99)
