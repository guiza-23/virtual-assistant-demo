# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all

user1 = User.new(username: 'Cocacola', email: 'coca-cola@gmail.com', password: '123456', type_of_user: 'Company', address: 'Niceto Vega 1234, Minessotta, USA', phone: '15-15488956')
user1.save!
user2 = User.new(username: 'Pedro', email: 'pedropiedra@gmail.com', password: '123456', type_of_user: 'Assistant', address: 'Independence Av. 3004, London, UK', phone: '15-4545454')
user2.save!
user3 = User.new(username: 'Coco', email: 'cocochanel@gmail.com', password: '123456', type_of_user: 'Assistant', address: 'Bogota 1234, Lima, Peru', phone: '15-6666666')
user3.save!
user4 = User.new(username: 'Netflix', email: 'netflix@gmail.com', password: '123456', type_of_user: 'Company', address: 'Buenos Aires 504, Buenos Aires, ARG', phone: '15-6666645')
user4.save!


company1 = Company.new(user_id: user1.id, name: 'Coca-cola', description: 'The largest company in the world in the sale of flavored soft drinks')
company1.photo.attach(io: URI.open("https://images.unsplash.com/photo-1622483767028-3f66f32aef97?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"), filename: "company1.png", content_type: "image/jpeg")
company1.save!
company2 = Company.new(user_id: user4.id, name: 'Netflix', description: 'The biggest streaming movie company in the world')
company2.photo.attach(io: URI.open("https://images.unsplash.com/photo-1661077150377-26922fb352bc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80"), filename: "company2.png", content_type: "image/jpeg")
company2.save!

assistant1 = Assistant.new(user_id: user2.id, skills: "Computer Software", availability: 'Full-time', firstname: "Pedro", lastname: "Piedra")
assistant1.photo.attach(io: URI.open("https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"), filename: "assistant1.png", content_type: "image/jpeg")
assistant1.save!
assistant2 = Assistant.new(user_id: user3.id, skills: "Flexibility", availability: 'Part-time', firstname: "Coco", lastname: "Channel")
assistant2.photo.attach(io: URI.open("https://images.unsplash.com/photo-1629747387925-6905ff5a558a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80"), filename: "assistant2.png", content_type: "image/jpeg")
assistant2.save!

offer1 = Offer.new(company_id: company1.id, title: 'Administrative assistant for our biggest office in Minnesota', description: 'Looking for a virtual assistant for 5 employees', tag: 'Part-time')
offer2 = Offer.new(company_id: company2.id, title: 'An organizational tasks virtual assistant for multiple employees for our LA office', description: 'Need an assistant for 2 executives', tag: 'Full-time')
offer3 = Offer.new(company_id: company1.id, title: 'Looking for remote bilingual assistant', description: 'Bilingual assistant for 3 people', tag: 'Full-time')

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
