# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(email: 'mike@test.com', password: 'test', password_confirmation: 'test')


Vinyl.create(artist: 'BABY HUEY', title: 'THE LIVING LEGEND - THE BABY HUEY STORY', price: 10.5, label: 'CRTM', labelnum: '8007', pic: 'babyhuey')