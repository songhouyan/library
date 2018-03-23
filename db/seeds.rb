# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(username: 'admin', email: 'admin@email.com', password: 'password', password_confirmation: 'password')

puts 'users'
50.times do |n|
    User.create!(username: Faker::Internet.user_name + "#{n}",
        email: Faker::Internet.email, password: 'password',
        password_confirmation: 'password')
    print '.'
end

puts 'books'
(1 + rand(900)).times do
    Book.create!(title: Faker::Book.title, author: Faker::Book.author, comment: Faker::Lorem.paragraph,
        user: User.all.sample, availability: (0..1).to_a.sample,
        availability: %w[true false].sample,
        tags: [Faker::Book.genre.downcase, Faker::Book.genre.downcase, Faker::Book.genre.downcase] )
    print '.'
end

puts 'followings'
User.all.each do |user|
    user.follow(User.all.sample)
end