# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name:  "shinya",
  email: "ooo@gmail.com",
  password:  "123456",
  password_confirmation: "123456",
  admin: true)

  99.times do |n|
    name  = Faker::Name.name
    email = "example-#{n+1}@gmail.com"
    password = "123456"
    User.create!(name:  name,
                 email: email,
                 password:              password,
                 password_confirmation: password)
  end

  50.times do |n|
    NewsTopic.create!(user_id: User.find(1).id, title: "test #{n+1}", content: "test #{n+1}")
  end


