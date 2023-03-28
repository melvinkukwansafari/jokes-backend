# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# db/seeds.rb
Author.create(name: "Mark Twain")
Author.create(name: "Oscar Wilde")
Author.create(name: "Groucho Marx")

mark_twain = Author.find_by(name: "Mark Twain")
mark_twain.jokes.create(content: "I have never let my schooling interfere with my education.")
mark_twain.jokes.create(content: "The secret of getting ahead is getting started.")

oscar_wilde = Author.find_by(name: "Oscar Wilde")
oscar_wilde.jokes.create(content: "I can resist anything except temptation.")
oscar_wilde.jokes.create(content: "Be yourself; everyone else is already taken.")

groucho_marx = Author.find_by(name: "Groucho Marx")
groucho_marx.jokes.create(content: "I never forget a face, but in your case I'll be glad to make an exception.")
groucho_marx.jokes.create(content: "Outside of a dog, a book is man's best friend. Inside of a dog it's too dark to read.")

