# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

a1 = Artist.create(name: "fred", bio: "fred's bio")

a2 = Artist.create(name: "sam", bio: "sam's bio")


g1 = Genre.create(name: "rock")
g2 = Genre.create(name: "folk")

s1 = Song.create(artist: a1, genre: g1)
s2 = Song.create(artist: a2, genre: g2)
