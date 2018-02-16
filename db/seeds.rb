# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

unless User.find_by_email('toniousx@example.com')
  FactoryBot.create(:user,
                    first_name: 'Tonio',
                    last_name: 'Serna',
                    username: 'toniux1',
                    remote_picture_url: 'https://copair.gitlab.io/with/img/antonio.png' ,
                    email: 'toniousx@example.com',
                    password: '123456',
                    fluent_language: 'Spanish, Catalan, English, Italian, German',
                    contact_preference: 'Skype, Whatapp: +4915736222857',
                    shared_screen_tool: 'Teamviewer, Join.me, Skype',
                    location: 'Berlin, Germany',
                    present_skills: 'Ruby L:5, Rails L:5, Git L:5, CSS L:5, HTML L:5, Linux L:5, JavaScript L:5',
                    future_skills: 'Ember, React, Terraform, Elixir, Phoenix, Python',
                    average_skill_level: 3.5,
                    short_goal: 'I am researching how to do a proper Copair form adding the skills with different levels and adding a new box evey time you add one. Do you know how to do Copair and do some pair programming with me? :)',
                    medium_goal: 'Work with a team in a new an exciting proyect and have The first full Beta version 100% ready, With the Blog, SEO, Social Media and at least 20 users',
                    long_goal: 'Make Copair big enough*(400 users) and create community!',
                    resume: 'Copair founder, Berlin based Economist & Full Stack Ruby on Rails Dev. I like languages, food, sport, traveling, code & nature',
                    code_reviewer: true,
                    social_media_info: 'https://github.com/nelantone, https://twitter.com/toniousx')
end

FactoryBot.create(:user)

puts "Seed successful"
## results
puts 'There are: '
puts "#{User.all.count} users"
