# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_admin = User.create(name: 'Admin', email: 'admin@example.com', password: '123456', password_confirmation: '123456')

user_user = User.create(name: 'Gilani', email: 'gilani@example.com', password: '123456', password_confirmation: '123456')

post1 = Post.create(
	description: 'Обедаю',  
	image:  File.new("#{Rails.root}/public/uploads/obed.jpg"),
	user_id: user_admin.id
  
)

post2 = Post.create(
  description: 'Alarcha',  
  image:  File.new("#{Rails.root}/public/uploads/alarcha.jpg"),
  user_id: user_user.id
)

Comment.create(
		description: 'Обычные дни админа))', 
		user_id: user_admin.id,
		post_id: post1.id
	)
Comment.create(
		description: 'Едил на веле в ущелье', 
		user_id: user_user.id,
		post_id: post2.id
	)
