# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'vinyl.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv = CSV.parse(csv_text.scrub, headers: true)
csv.each do |row|
  t = Vinyl.new
  t.artist = row['artist']
  t.title = row['title']
  t.price = row['price']
  t.label= row['label']
  t.labelnum = row['labelnum']
  t.save
#   puts "#{t.artist}, #{t.title} saved"
end



User.create(email: 'mike@test.com', password: 'test', password_confirmation: 'test')
User.create(email: 'john@scorpio.com', password: 'test', password_confirmation: 'test')


# Vinyl.create(artist: 'BABY HUEY', title: 'THE LIVING LEGEND - THE BABY HUEY STORY', price: 10.5, label: 'CRTM', labelnum: '8007', pic: 'babyhueylivinglegend.jpg')
# Vinyl.create(artist: 'BOB MARLEY & THE WAILERS', title: 'KAYA', price: 12.5, label: 'TUFF', labelnum: '4727626H', pic: 'marley-kaya.jpg')


