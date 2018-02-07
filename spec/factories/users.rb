require 'faker'
FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name {  Faker::Name.last_name }
    username { Faker::Internet.unique.user_name(%w[. _ -]) }
    email { Faker::Internet.unique.email }
    password '123456'
    password_confirmation '123456'
    contact_preference 'Skype, whatssap, other'
    shared_screen_tool 'Teamviewer, Join.me'
    fluent_language 'English, Spanish, Italian'
  end

  trait :hard_to_approach_user do
    contact_preference 'email'
    shared_screen_tool 'oter: never used'
    fluent_language 'Italian'
  end
end
