FactoryBot.define do
  factory :skill do
    name_and_level { { ruby: 5.0, rails: 5.0, git: 5.0, css: 5.0, html: 5.0, linux: 5.0, js: 5.0 } }
    interest       %w[react terraform elixir phoenix python]
  end
end
