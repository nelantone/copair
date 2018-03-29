# frozen_string_literal: true

require 'faker'
FactoryBot.define do
  factory :user do
    first_name 'Moss'
    last_name 'Geeky-Beta'
    username 'GeekyMoss-beta'
    email 'geekymoss@example.com'
    password '123456'
    password_confirmation '123456'
    contact_preference 'Skype, whatssap, other'
    shared_screen_tool 'Teamviewer, Join.me'
    fluent_language 'English, Spanish, Italian'
    location 'Berlin, Germany'
    present_skills 'Ruby L:5, Rails L:5, Git L:5, CSS L:5, HTML L:5, Linux L:5, JavaScript L:5 BrainFuck L:5'
    future_skills 'React, Terraform, Elixir, Phoenix, Python'
    average_skill_level '5'
    short_goal 'Have You Tried Turning It Off And On Again?'
    medium_goal "I came here to drink milk and kick ass. And I've just finished my milk."
    long_goal 'Keep to be like a Moss!'
    resume "Olfactory expert, Computer expertis, Machinery construction,'Five-Finger-Fillet', Genius-level intellect, Inventor and entrepreneur. Some documents and my mother can confirm these facts."
    code_reviewer true
    social_media_info 'https://www.facebook.com/geekymoss'
    remote_picture_url'https://c2.staticflickr.com/6/5489/14217989839_61b2a803a3_o.jpg'
  end

  trait :hard_to_approach_user do
    contact_preference 'email'
    shared_screen_tool 'oter: never used'
    fluent_language 'Italian'
  end
end
