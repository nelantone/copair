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
    location 'Berlin, Germany'
    present_skills 'Ruby L:4, Rails L:4, Git L:4.5, CSS L:4, HTML L:4, Linux L:3, JavaScript L:3'
    future_skills 'React, Terraform, Elixir, Phoenix, Python'
    average_skill_level '4'
    short_goal 'Finish Object Oriented Design Book'
    medium_goal 'Finish my beta project'
    long_goal 'Become Senior Backend Developer'
    resume 'I studied Pilitical Sciences and Music, Now I enjoy typing'
    code_reviewer true
    social_media_info 'github.com/exampleuser, www.mywebsite.com'
  end

  trait :hard_to_approach_user do
    contact_preference 'email'
    shared_screen_tool 'oter: never used'
    fluent_language 'Italian'
  end
end
