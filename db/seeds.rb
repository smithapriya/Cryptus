# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

%w(btc eth).each do |name|
  Cryptocurrency.create name: name, marketcap: 0.0, volume: 0.0, price: 0.0
end

u = User.create! name: "Example", email: "example@example.com", password: "example", password_confirmation: "example"

p1 = Post.create content: "Selling!", quantity: "0.5", price: "10000", btc: "true"
p2 = Post.create content: "Ether!", quantity: "2.34", price: "480", btc: "false"
p3 = Post.create content: "Ether Hype!", quantity: "10.2", price: "500", btc: "false"

[p1, p2, p3].each do |post|
  post.user_id = u.id
  post.save!
end
