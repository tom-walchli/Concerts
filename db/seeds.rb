require 'time'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


p1 = Gig.create date: (Time.new + 1.day), description: 'Awesome concert you have to attend', price: 10, venue:'Hot Band', city:'Miami'
