require 'time'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


p1 = Gig.create date: (Time.new + 1.day),  artist:'Hot Band 1' , description: 'Awesome concert you have to see 1',  price: 10, venue:'Fillmore 1',  city:'Miami'
p1 = Gig.create date: (Time.new + 2.day),  artist:'Hot Band 2' , description: 'Awesome concert you have to see 2',  price: 10, venue:'Fillmore 2',  city:'New York'
p1 = Gig.create date: (Time.new + 3.day),  artist:'Hot Band 3' , description: 'Awesome concert you have to see 3',  price: 10, venue:'Fillmore 3',  city:'Orlando'
p1 = Gig.create date: (Time.new + 4.day),  artist:'Hot Band 4' , description: 'Awesome concert you have to see 4',  price: 10, venue:'Fillmore 4',  city:'Los Angeles'
p1 = Gig.create date: (Time.new + 5.day),  artist:'Hot Band 5' , description: 'Awesome concert you have to see 5',  price: 10, venue:'Fillmore 5',  city:'Pittsburg'
p1 = Gig.create date: (Time.new + 6.day),  artist:'Hot Band 6' , description: 'Awesome concert you have to see 6',  price: 10, venue:'Fillmore 6',  city:'Seattle'
p1 = Gig.create date: (Time.new + 7.day),  artist:'Hot Band 7' , description: 'Awesome concert you have to see 7',  price: 10, venue:'Fillmore 7',  city:'Boston'
p1 = Gig.create date: (Time.new + 8.day),  artist:'Hot Band 8' , description: 'Awesome concert you have to see 8',  price: 10, venue:'Fillmore 8',  city:'Key West'
p1 = Gig.create date: (Time.new + 9.day),  artist:'Hot Band 9' , description: 'Awesome concert you have to see 9',  price: 10, venue:'Fillmore 9',  city:'Tampa'
p1 = Gig.create date: (Time.new + 10.day), artist:'Hot Band 10', description: 'Awesome concert you have to see 10', price: 10, venue:'Fillmore 10', city:'North Pole'

puts 'gigs seeded...'