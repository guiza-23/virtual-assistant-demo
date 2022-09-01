# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all

user1 = User.new(username: 'cocacola', email: 'coca-cola@gmail.com', password: '123456', type_of_user: 'Company', address: 'niceto vega 1234', phone: '15-15488956')
user1.save!
user2 = User.new(username: 'pedro', email: 'pedropiedra@gmail.com', password: '123456', type_of_user: 'Assistant', address: 'vegarr 1234', phone: '15-4545454')
user2.save!
user3 = User.new(username: 'coco', email: 'cocochanel@gmail.com', password: '123456', type_of_user: 'Assistant', address: 'bogota 1234', phone: '15-6666666')
user3.save!
user4 = User.new(username: 'Netflix', email: 'netflix@gmail.com', password: '123456', type_of_user: 'Company', address: 'Buenos Aires 1234', phone: '15-6666645')
user4.save!


company1 = Company.new(user_id: user1.id, name: 'coca-cola', description: 'la empresa mas grande del mundo en venta de bebidas gaseosas saborizadas')
company2 = Company.new(user_id: user4.id, name: 'Netflix', description: 'la empresa mas grande de peliculas del mundo')
company1.save!
company2.save!

assistant1 = Assistant.new(user_id: user2.id, skills: "Computer Software and Application Knowledge", availability: 'Full-time', firstname: "Pedro", lastname: "Piedra")
assistant2 = Assistant.new(user_id: user3.id, skills: "Flexibility", availability: 'Any', firstname: "Coco", lastname: "Chanel")

assistant1.save!
assistant2.save!

offer1 = Offer.new(company_id: company1.id, description: 'busco asistente para 5 personas', tag: 'part-time')
offer2 = Offer.new(company_id: company2.id, description: 'busco asistente para 2 personas', tag: 'full-time')
offer3 = Offer.new(company_id: company1.id, description: ' asistente para 3 personas', tag: 'full-time')

offer1.save!
offer2.save!
offer3.save!

application1 = Application.new(assistant_id: assistant1.id, offer_id: offer1.id, status: "Interview")
application2 = Application.new(assistant_id: assistant2.id, offer_id: offer2.id, status: "Interview")
application3 = Application.new(assistant_id: assistant1.id, offer_id: offer2.id, status: "Interview")
application4 = Application.new(assistant_id: assistant2.id, offer_id: offer1.id, status: "Pending")
application5 = Application.new(assistant_id: assistant1.id, offer_id: offer2.id, status: "Interview")

application1.save!
application2.save!
application3.save!
application4.save!
application5.save!


puts "Finished"
