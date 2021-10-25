# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require "faker" gem

User.delete_all
Story.delete_all
Word.delete_all

brinton = User.create(name: "brinton")
willow = User.create(name: "willow")

clock = Word.create(name: "clock")
jump = Word.create(name: "jump")
ran = Word.create(name: "ran")
moscow = Word.create(name: "moscow")
july = Word.create(name: "july")

puts "SEEDED THE DATABASE"