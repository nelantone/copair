# frozen_string_literal: true

FactoryBot.define do
  factory :skill do
    name 'ruby'
    level 4.5
  end

  factory :interest do
    name 'elixir'
    level nil
  end
end
