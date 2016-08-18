# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cuisines = [
"American",
"Asian",
"Barbecue",
"Cajun & Creole",
"Chinese",
"Cuban",
"English",
"French",
"German",
"Greek",
"Hawaiian",
"Hungarian",
"Indian",
"Irish",
"Italian",
"Japanese",
"Mediterranean",
"Mexican",
"Moroccan",
"Portuguese",
"Southern & Soul Food",
"Southwestern",
"Spanish",
"Swedish",
"Thai"]



cuisines.each do |cuisine|
  Cuisine.create(name: cuisine)
end

31.times do |n|
  email = "email##{n}@email.com"
  User.create(name: Faker::Internet.user_name,
              my_story: Faker::Hipster.paragraph,
              password: 'password',
              password_confirmation: 'password',
              happy_to_host: Faker::Boolean.boolean(0.6),
              happy_to_travel: Faker::Boolean.boolean(0.6),
              ip_address: Faker::Internet.ip_v4_address,
              email: email)
end

5.times do
  cuisines.each do |cuisine|
    recipe_name = "#{cuisine} Recipe"
    Recipe.create(user_id: Faker::Number.between(1, 100),
                cuisine_id: cuisines.index(cuisine)+1,
                ingredients: Faker::Lorem.words(10),
                instructions: Faker::Lorem.sentences(6, true),
                description: Faker::Hipster.paragraph(2, false, 4),
                expected_time: Faker::Number.number(2),
                name: recipe_name)
  end
end

30.times do |n|
  id = n + 1
  Interest.create(user_id: id,
                  cuisine_id: Faker::Number.between(1, 24),
                  learn: Faker::Boolean.boolean(0.5),
                  teach: Faker::Boolean.boolean(0.5))
end
30.times do |n|
  id = n + 1
  Interest.create(user_id: id,
                  cuisine_id: Faker::Number.between(1, 24),
                  learn: Faker::Boolean.boolean(1),
                  teach: Faker::Boolean.boolean(0))
end
30.times do |n|
  id = n + 1 
  Interest.create(user_id: id,
                  cuisine_id: Faker::Number.between(1, 24),
                  learn: Faker::Boolean.boolean(0),
                  teach: Faker::Boolean.boolean(1))
end
