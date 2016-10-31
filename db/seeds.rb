# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
candidates = Candidate.create([{ name: 'Wings', description: 'Delicious wings, and celery, with sauce'}, { name: 'Pizza', description: 'Mouth-watering pizza from a very good place'}, { name: 'Sandwiches', description:'Incredible in-house made bread, with your fave fixins'}, { name: 'Tacos', description: 'Basically a tortilla and meat'}  ])