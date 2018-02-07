require 'rails_helper'

RSpec.describe 'users/show', type: :view do
  before do
    @user = assign(:user, User.create!(
                            email: 'one@example.com',
                            password: '123456',
                            first_name: 'First Name',
                            last_name: 'Last Name',
                            username: 'Username',
                            picture: 'Picture',
                            contact_preference: 'Contact Preference',
                            shared_screen_tool: 'Shared Screen Tool',
                            fluent_language: 'Fluent Language'
    ))
  end

  it 'renders attributes in <p>' do # rubocop:disable RSpec/ExampleLength, RSpec/MultipleExpectations
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Username/)
    expect(rendered).to match(/Picture/)
    expect(rendered).to match(/Contact Preference/)
    expect(rendered).to match(/Shared Screen Tool/)
    expect(rendered).to match(/Fluent Language/)
  end
end
