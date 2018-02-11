# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

unless User.find_by_email('toniousx@example.com')
  FactoryBot.create(:user, first_name: 'Tonio', last_name: 'Serna', username: 'toniux1', picture: 'longi.jpg', email: 'toniousx@example.com', password: '123456', fluent_language: 'en', contact_preference: 'skype', shared_screen_tool: 'Grorr')
end

FactoryBot.create_list(:user, 5)

puts "Seed successful"
## results
puts 'There are: '
puts "#{User.all.count} users"