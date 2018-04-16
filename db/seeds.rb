# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?





User.destroy_all
10.times do |i|
  User.create(email: "usuario#{i+1}@gmail.com", password: '123456')
end

10.times do |i|
  Post.create(
    user: User.order("RANDOM()").first,
    title: Faker::LeagueOfLegends.quote,
    content: Faker::Lorem.paragraph)
  end

  20.times do |i|
    Comment.create(
      post: Post.order("RANDOM()").first,
      content: Faker::Lorem.paragraph,
      created_at: Faker::Number.number(1).to_i.day.ago)


    end


    10.times do |i|
      Post.create(user: User.order("RANDOM()").first,
      title: "Lorem Ipsum #{i}!",
      content: Faker::Lorem.paragraph,
      created_at: Faker::Number.number(1).to_i.day.ago)
    end
