# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

post_a = Post.create(description: "I have a great idea to build an app", needed_skillset: "backend developer", snippet: "need help building")
post_b = Post.create(description: "Want to record new music I have written", needed_skillset: "song writer", snippet: "Need help recording myself")
post_c = Post.create(description: "Looking for a driven student to help build a website", needed_skillset: "developer", snippet: "blogger needing help")
post_d = Post.create(description: "Just got a new camera and need models to help build my resume", needed_skillset: "model", snippet: "want free images?")


user_a = User.create(username: "Moana", name: "Momo", school: "flatiron", skillset: "Developer", img: "https://images.unsplash.com/photo-1513207565459-d7f36bfa1222?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80")
user_b = User.create(username: "Tommy", name: "Tom", school: "GA state", skillset: "Song writer", img: "http://www.liberaldictionary.com/wp-content/uploads/2018/12/men-1.jpg")
user_c = User.create(username: "Cher", name: "cherry", school: "Tech", skillset: "Model", img: "http://www.inspiredluv.com/wp-content/uploads/2016/09/27-beautiful-girl-image.jpg")
