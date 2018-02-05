json.extract! user, :id, :first_name, :last_name, :username, :picture, :contact_preference, :shared_screen_tool, :fluent_language, :created_at, :updated_at
json.url user_url(user, format: :json)
