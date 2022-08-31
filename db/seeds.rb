# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = User.new(username: 'cocacola', email: 'coca-cola@gmail.com', password: '123456', type_of_user: 'Company', address: 'niceto vega 1234', phone: '15-15488956')
user1.save!
user2 = User.new(username: 'pedro', email: 'pedropiedra@gmail.com', password: '123456', type_of_user: 'Assistant', address: 'vegarr 1234', phone: '15-4545454')
user2.save!
user3 = User.new(username: 'coco', email: 'cocochanel@gmail.com', password: '123456', type_of_user: 'Assistant', address: 'bogota 1234', phone: '15-6666666')
user3.save!

company1 = Company.new(user_id: user1.id, description: 'la empresa mas grande del mundo en venta de bebidas gaseosas saborizadas')
assistant1 = Assistant.new(user_id: user2.id, skills: "Computer Software and Application Knowledge", availability: 'Full-time', firstname: "Pedro", lastname: "Piedra")
assistant2 = Assistant.new(user_id: user3.id, skills: "Flexibility", availability: 'Any', firstname: "Coco", lastname: "Chanel")

company1.save!
assistant1.save!
assistant2.save!


puts "Finished"
