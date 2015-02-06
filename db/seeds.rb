require 'time'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


gig = Gig.create date: (Time.new + 1.day),  artist:'Hot Band 1' , description: 'Awesome concert you have to see 1',  price: 10.0, venue:'Fillmore 1',  city:'Miami'
Gig.create date: (Time.new + 2.day),  artist:'Hot Band 2' , description: 'Awesome concert you have to see 2',  price: 20.0, venue:'Fillmore 2',  city:'New York'
Gig.create date: (Time.new + 3.day),  artist:'Hot Band 3' , description: 'Awesome concert you have to see 3',  price: 30.0, venue:'Fillmore 3',  city:'Orlando'
Gig.create date: (Time.new + 4.day),  artist:'Hot Band 4' , description: 'Awesome concert you have to see 4',  price: 40.0, venue:'Fillmore 4',  city:'Los Angeles'
Gig.create date: (Time.new + 5.day),  artist:'Hot Band 5' , description: 'Awesome concert you have to see 5',  price: 50.0, venue:'Fillmore 5',  city:'Pittsburg'
Gig.create date: (Time.new + 6.day),  artist:'Hot Band 6' , description: 'Awesome concert you have to see 6',  price: 60.0, venue:'Fillmore 6',  city:'Seattle'
Gig.create date: (Time.new + 7.day),  artist:'Hot Band 7' , description: 'Awesome concert you have to see 7',  price: 70.0, venue:'Fillmore 7',  city:'Boston'
Gig.create date: (Time.new + 8.day),  artist:'Hot Band 8' , description: 'Awesome concert you have to see 8',  price: 80.0, venue:'Fillmore 8',  city:'Key West'
Gig.create date: (Time.new + 9.day),  artist:'Hot Band 9' , description: 'Awesome concert you have to see 9',  price: 90.0, venue:'Fillmore 9',  city:'Tampa'
Gig.create date: (Time.new + 10.day), artist:'Hot Band 10', description: 'Awesome concert you have to see 10', price: 5.0 , venue:'Fillmore 10', city:'North Pole'

puts 'gigs seeded...'
p gig.valid?
p gig.errors.full_messages

