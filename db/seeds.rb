# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

def seed_users
  user_id = 0
  10.times do
    user = User.create!(
      name:" Test#{user_id}",
      email:"test#{user_id}@test.com",
      password: '123456',
      password_confirmation:'123456'
    )
  user_id += 1
  puts "#{user.name} created."
  end
end

def seed_categories
  hobbies = ['Arts', 'Crafts', 'Sports', 'Sciences', 'Collecting', 'Reading', 'Other']
  studies = ['Arts and Humanities', 'Physical Science and Engineering', 'Math and Logic',
          'Computer Science', 'Data Science', 'Economics and Finance', 'Business',
          'Social Sciences', 'Language', 'Other']
  teams = ['Study', 'Development', 'Arts and Hobby', 'Other']

  hobbies.each do |hobby|
    hobby_record = Category.create!(
      name: hobby,
      branch: 'hobbies'
    )
    puts "#{hobby_record.name} hobby created."
  end

  studies.each do |study|
    study_record = Category.create!(
      name: study,
      branch: 'studies'
    )
    puts "#{study_record.name} study created."
  end

  teams.each do |team|
    team_record = Category.create!(
      name: team,
      branch: "teams"
    )
    puts "#{team_record.name} team created."
  end

end

def seed_posts
  categories = Category.all

  categories.each do |category|
    # Category has many posts
    # So for each categories i'll create 5 posts
    5.times do
      post_record = Post.create!(
        title: Faker::Lorem.sentences[0],
        content: Faker::Lorem.sentences[0],
        category_id: category.id,
        user_id: rand(1..9)
      )
      puts "#{post_record.title} post created."
    end
  end
end

seed_users
seed_categories
seed_posts
