# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Message.create(message:"heelo mannn been so long",user:User.find(1))
Message.create(message:"heelo im here in korea",user:User.find(2))
Message.create(message:"when did you go wow",user:User.find(5))
Message.create(message:"lucky bitch",user:User.find(3))
Message.create(message:"can you calm down",user:User.find(4))
