# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
Company.destroy_all
Assistant.destroy_all

user1 = User.new(username: 'cocacola', email: 'cocacola@gmail.com', password: '123456', type_of_user: 'Company', address: 'niceto vega 1234', phone: '15-15488956')
user1.save!
user2 = User.new(username: 'pedro', email: 'pedro@gmail.com', password: '123456', type_of_user: 'Assistant', address: 'vegarr 1234', phone: '15-4545454')
user2.save!
user3 = User.new(username: 'coco', email: 'coco@gmail.com', password: '123456', type_of_user: 'Assistant', address: 'bogota 1234', phone: '15-6666666')
user3.save!

company1 = Company.new(user_id: user1.id, description: 'la empresa mas grande del mundo en venta de bebidas gaseosas saborizadas')
assistant1 = Assistant.new(user_id: user2.id, skills: 'Organization Skills', availability: 'Full-time')
assistant2 = Assistant.new(user_id: user3.id, skills: 'Flexibility', availability: 'Any')

company1.save!
assistant1.save!
assistant2.save!


puts "Finished"

