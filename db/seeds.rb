require 'time'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


g1  = Gig.create date: (Time.new + 1.day),  artist:'Hot Band 1' , description: 'Awesome concert you have to see 1',  price: 10.0, venue:'Fillmore 1',  city:'Miami'
g2  = Gig.create date: (Time.new + 2.day),  artist:'Hot Band 2' , description: 'Awesome concert you have to see 2',  price: 20.0, venue:'Fillmore 2',  city:'New York'
g3  = Gig.create date: (Time.new + 3.day),  artist:'Hot Band 3' , description: 'Awesome concert you have to see 3',  price: 30.0, venue:'Fillmore 3',  city:'Orlando'
g4  = Gig.create date: (Time.new + 4.day),  artist:'Hot Band 4' , description: 'Awesome concert you have to see 4',  price: 40.0, venue:'Fillmore 4',  city:'Los Angeles'
g5  = Gig.create date: (Time.new + 5.day),  artist:'Hot Band 5' , description: 'Awesome concert you have to see 5',  price: 50.0, venue:'Fillmore 5',  city:'Pittsburg'
g6  = Gig.create date: (Time.new + 6.day),  artist:'Hot Band 6' , description: 'Awesome concert you have to see 6',  price: 60.0, venue:'Fillmore 6',  city:'Seattle'
g7  = Gig.create date: (Time.new + 7.day),  artist:'Hot Band 7' , description: 'Awesome concert you have to see 7',  price: 70.0, venue:'Fillmore 7',  city:'Boston'
g8  = Gig.create date: (Time.new + 8.day),  artist:'Hot Band 8' , description: 'Awesome concert you have to see 8',  price: 80.0, venue:'Fillmore 8',  city:'Key West'
g9  = Gig.create date: (Time.new + 9.day),  artist:'Hot Band 9' , description: 'Awesome concert you have to see 9',  price: 90.0, venue:'Fillmore 9',  city:'Tampa'
g10 = Gig.create date: (Time.new + 10.day), artist:'Hot Band 10', description: 'Awesome concert you have to see 10', price: 5.0 , venue:'Fillmore 10', city:'North Pole'

g1.comments.create title: 'A comment 1' , content: "Here's what i have to say... 1" , rating: 3
g1.comments.create title: 'A comment 2' , content: "Here's what i have to say... 2" , rating: 5

g2.comments.create title: 'A comment 1' , content: "Here's what i have to say... 1" , rating: 3
g2.comments.create title: 'A comment 2' , content: "Here's what i have to say... 2" , rating: 5

g3.comments.create title: 'A comment 1' , content: "Here's what i have to say... 1" , rating: 3
g3.comments.create title: 'A comment 2' , content: "Here's what i have to say... 2" , rating: 5

g4.comments.create title: 'A comment 1' , content: "Here's what i have to say... 1" , rating: 3
g4.comments.create title: 'A comment 2' , content: "Here's what i have to say... 2" , rating: 5

g5.comments.create title: 'A comment 1' , content: "Here's what i have to say... 1" , rating: 3
g5.comments.create title: 'A comment 2' , content: "Here's what i have to say... 2" , rating: 5

g6.comments.create title: 'A comment 1' , content: "Here's what i have to say... 1" , rating: 3
g6.comments.create title: 'A comment 2' , content: "Here's what i have to say... 2" , rating: 5

g7.comments.create title: 'A comment 1' , content: "Here's what i have to say... 1" , rating: 3
g7.comments.create title: 'A comment 2' , content: "Here's what i have to say... 2" , rating: 5

g8.comments.create title: 'A comment 1' , content: "Here's what i have to say... 1" , rating: 3
g8.comments.create title: 'A comment 2' , content: "Here's what i have to say... 2" , rating: 5

g9.comments.create title: 'A comment 1' , content: "Here's what i have to say... 1" , rating: 3
g9.comments.create title: 'A comment 2' , content: "Here's what i have to say... 2" , rating: 5

g10.comments.create title: 'A comment 1' , content: "Here's what i have to say... 1" , rating: 3
g10.comments.create title: 'A comment 2' , content: "Here's what i have to say... 2" , rating: 5



puts 'gigs seeded...'

