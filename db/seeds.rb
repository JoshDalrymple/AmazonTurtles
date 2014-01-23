# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Turtle.create(type: 'Snapping', speed: 1, location: '33.748995,-84.387982', diet: 'grass')
Turtle.create(type: 'Box', speed: 2, location: '40.714353,-74.005973', diet: 'rocks')
Turtle.create(type: 'Gold', speed: 21, location: '25.271139,55.307485', diet: 'gold')
