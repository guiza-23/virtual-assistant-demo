require "open-uri"

User.destroy_all

puts "Data Base CLEANED"


user1 = User.new(username: 'Coca cola', email: 'coca-cola@gmail.com', password: '123456', type_of_user: 'Company', address: 'Niceto Vega 1234, Minessotta, United States', phone: '+16512014899')
user1.save!
user2 = User.new(username: 'Pedro', email: 'pedro@gmail.com', password: '123456', type_of_user: 'Assistant', address: 'Independence Av. 3004, London, United Kingdom', phone: '+442065789809')
user2.save!
user3 = User.new(username: 'Emma', email: 'emma@gmail.com', password: '123456', type_of_user: 'Assistant', address: 'Bogota 1234, Lima, Peru', phone: '+510191236767')
user3.save!
user4 = User.new(username: 'Netflix', email: 'netflix@gmail.com', password: '123456', type_of_user: 'Company', address: 'Buenos Aires 504, Buenos Aires, Argentina', phone: '+54911678986')
user4.save!
user5 = User.new(username: 'Sarah', email: 'sarah@gmail.com', password: '123456', type_of_user: 'Assistant', address: 'Saint James 3005, Paris, France', phone: '+33140250808')
user5.save!
user6 = User.new(username: 'Maria', email: 'maria@gmail.com', password: '123456', type_of_user: 'Assistant', address: 'M. Hrushevskoho str, Kyiv, Ukraine', phone: '+380442004525')
user6.save!
user7 = User.new(username: 'Abril', email: 'abril@gmail.com', password: '123456', type_of_user: 'Assistant', address: 'La Palmilla 3932, Santiago, Chile', phone: '+56617896283')
user7.save!
user8 = User.new(username: 'Jose', email: 'jose@gmail.com', password: '123456', type_of_user: 'Assistant', address: 'Street: Cr 54 No., Medellin, Colombia', phone: '+57617896283')
user8.save!

puts "Created USERS"

company1 = Company.new(user_id: user1.id, name: 'Coca-cola', description: 'The largest company in the world in the sale of flavored soft drinks')
company1.photo.attach(io: URI.open("https://images.unsplash.com/photo-1622483767028-3f66f32aef97?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"), filename: "company1.png", content_type: "image/jpeg")
company1.save!
company2 = Company.new(user_id: user4.id, name: 'Netflix', description: 'The biggest streaming movie company in the world')
company2.photo.attach(io: URI.open("https://images.unsplash.com/photo-1661077150377-26922fb352bc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80"), filename: "company2.png", content_type: "image/jpeg")
company2.save!

puts "Created COMPANIES"

assistant1 = Assistant.new(user_id: user2.id, skills: "Computer Software", availability: 'Full-time', firstname: "Pedro", lastname: "Castillo")
assistant1.photo.attach(io: URI.open("https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80"), filename: "assistant1.png", content_type: "image/jpeg")
assistant1.cv.attach(io: URI.open("https://res.cloudinary.com/watchlistcreator/image/upload/v1662561533/development/Documento_sin_t%C3%ADtulo_1_atwxrz.pdf"), filename: "assistant1.pdf", content_type: "file/pdf")
assistant1.save!

assistant2 = Assistant.new(user_id: user3.id, skills: "Flexibility", availability: 'Part-time', firstname: "Emma", lastname: "Jhonson")
assistant2.photo.attach(io: URI.open("https://images.unsplash.com/photo-1499887142886-791eca5918cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80"), filename: "assistant2.png", content_type: "image/jpeg")
assistant2.cv.attach(io: URI.open("https://res.cloudinary.com/watchlistcreator/image/upload/v1662561786/development/Documento_sin_t%C3%ADtulo_2_getpsv.pdf"), filename: "assistant2.pdf", content_type: "file/pdf")
assistant2.save!

assistant3 = Assistant.new(user_id: user5.id, skills: "Flexibility", availability: 'Full-time', firstname: "Sarah", lastname: "Nachtingall")
assistant3.photo.attach(io: URI.open("https://images.unsplash.com/photo-1658932447761-8a59cd02d201?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80"), filename: "assistant3.png", content_type: "image/jpeg")
assistant3.cv.attach(io: URI.open("https://res.cloudinary.com/watchlistcreator/image/upload/v1662561533/development/Documento_sin_t%C3%ADtulo_1_atwxrz.pdf"), filename: "assistant3.pdf", content_type: "file/pdf")
assistant3.save!

assistant4 = Assistant.new(user_id: user6.id, skills: "Flexibility", availability: 'Full-time', firstname: "Maria", lastname: "Kirolinko")
assistant4.photo.attach(io: URI.open("https://images.unsplash.com/photo-1597248374161-426f0d6d2fc9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80"), filename: "assistant4.png", content_type: "image/jpeg")
assistant4.cv.attach(io: URI.open("https://res.cloudinary.com/watchlistcreator/image/upload/v1662561533/development/Documento_sin_t%C3%ADtulo_1_atwxrz.pdf"), filename: "assistant4.pdf", content_type: "file/pdf")
assistant4.save!

assistant5 = Assistant.new(user_id: user7.id, skills: "Flexibility", availability: 'Full-time', firstname: "Abril", lastname: "Castañeda")
assistant5.photo.attach(io: URI.open("https://images.unsplash.com/photo-1597223557154-721c1cecc4b0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80"), filename: "assistant5.png", content_type: "image/jpeg")
assistant5.cv.attach(io: URI.open("https://res.cloudinary.com/watchlistcreator/image/upload/v1662561533/development/Documento_sin_t%C3%ADtulo_1_atwxrz.pdf"), filename: "assistant5.pdf", content_type: "file/pdf")
assistant5.save!

assistant6 = Assistant.new(user_id: user8.id, skills: "Flexibility", availability: 'Part-time', firstname: "Jose", lastname: "Campoverde")
assistant6.photo.attach(io: URI.open("https://images.unsplash.com/photo-1623605931891-d5b95ee98459?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=594&q=80"), filename: "assistant6.png", content_type: "image/jpeg")
assistant6.cv.attach(io: URI.open("https://res.cloudinary.com/watchlistcreator/image/upload/v1662561533/development/Documento_sin_t%C3%ADtulo_1_atwxrz.pdf"), filename: "assistant6.pdf", content_type: "file/pdf")
assistant6.save!

puts "Created OFFERS"

offer1 = Offer.new(company_id: company1.id, title: 'Administrative assistant', location: 'Minnesota', description: 'Looking for a virtual assistant for 5 employees', cost_hour: 25, tag: 'Part-time')
offer1.save!
offer2 = Offer.new(company_id: company2.id, title: 'Organizational tasks', location: 'Los Angeles', description: 'Need an assistant virtual assistant for 2 executives', cost_hour: 32, tag: 'Full-time')
offer2.save!
offer3 = Offer.new(company_id: company1.id, title: 'A remote bilingual', location: 'Buenos Aires', description: 'Bilingual assistant for 3 people', cost_hour: 18, tag: 'Any')
offer3.save!

puts "Created APPLICATIONS"

application1 = Application.new(assistant_id: assistant1.id, offer_id: offer1.id, status: "Interview")
application1.save!
application2 = Application.new(assistant_id: assistant2.id, offer_id: offer2.id, status: "Interview")
application2.save!
application3 = Application.new(assistant_id: assistant1.id, offer_id: offer2.id, status: "Interview")
application3.save!
application4 = Application.new(assistant_id: assistant2.id, offer_id: offer1.id, status: "Pending")
application4.save!
application5 = Application.new(assistant_id: assistant1.id, offer_id: offer2.id, status: "Interview")
application5.save!

puts "Created REVIEWS"

review1 = Review.new(assistant_id: assistant1.id, content: 'Excellent assistant!', rating: 5)
review1.save!
review2 = Review.new(assistant_id: assistant2.id, content: 'Amazing bilingual assistant!', rating: 4)
review2.save!

puts "Created COMMENTS"

comment1 = Comment.new(title: 'Amazing Job', content: 'It allows people with skills like me all over the world be able to work remote/online', rating: 5, name: "Pedro", assistant_id: assistant1.id)
comment1.save!
comment2 = Comment.new(title: 'Great platform', content: 'I was able to work remote with an excellent salary and grow my skills and portfolio', rating: 4, name: "Coco", assistant_id: assistant2.id)
comment2.save!
comment3 = Comment.new(title: 'Excellent', content: 'I am working remote with an excellent salary and getting to know great companies', rating: 5, name: "Anonymous", assistant_id: assistant1.id)
comment3.save!

puts "FINISH --- SEED CREATED"
