require 'rails_helper'

RSpec.describe 'users/index', type: :view do
  before do
    assign(:users, [
             User.create!(
               email: 'one@example.com',
               password: '123456',
               first_name: 'First Name',
               last_name: 'Last Name',
               username: 'Username',
               picture: 'Picture',
               contact_preference: 'Contact Preference',
               shared_screen_tool: 'Shared Screen Tool',
               fluent_language: 'Fluent Language'
             ),
             User.create!(
               email: 'two@example.com',
               password: '123456',
               first_name: 'First Name',
               last_name: 'Last Name',
               username: 'Username2',
               picture: 'Picture',
               contact_preference: 'Contact Preference',
               shared_screen_tool: 'Shared Screen Tool',
               fluent_language: 'Fluent Language'
             )
           ])
  end

  it 'renders a list of users' do # rubocop:disable RSpec/ExampleLength
    render
    assert_select 'tr>td', text: 'First Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Last Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Username'.to_s, count: 1
    assert_select 'tr>td', text: 'Username2'.to_s, count: 1
    assert_select 'tr>td', text: 'Picture'.to_s, count: 2
    assert_select 'tr>td', text: 'Contact Preference'.to_s, count: 2
    assert_select 'tr>td', text: 'Shared Screen Tool'.to_s, count: 2
    assert_select 'tr>td', text: 'Fluent Language'.to_s, count: 2
  end
end
