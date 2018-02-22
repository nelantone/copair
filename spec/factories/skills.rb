FactoryBot.define do
  factory :skill do
    present_skills 'Ruby L:5, Rails L:5, Git L:5, CSS L:5, HTML L:5, Linux L:5, JavaScript L:5 BrainFuck L:5'
    future_skills 'React, Terraform, Elixir, Phoenix, Python'
    average_skill_level '5'
    present_goal 'Learn Elixir Basics'
  end
end
