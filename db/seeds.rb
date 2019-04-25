# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Start running seeds \n"

User.destroy_all
User.create(
  [
    {
      name: 'Renato Rosa Franco',
      nickname: 'renatorfranco18',
      email: 'renator.franco@eden-falls.com',
      password: 'test123',
      password: 'test123'
    }
  ]
)

puts "Finished running seeds \n"