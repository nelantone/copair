require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :username => "MyString",
      :picture => "MyString",
      :contact_preference => "MyString",
      :shared_screen_tool => "MyString",
      :fluent_language => "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input[name=?]", "user[first_name]"

      assert_select "input[name=?]", "user[last_name]"

      assert_select "input[name=?]", "user[username]"

      assert_select "input[name=?]", "user[picture]"

      assert_select "input[name=?]", "user[contact_preference]"

      assert_select "input[name=?]", "user[shared_screen_tool]"

      assert_select "input[name=?]", "user[fluent_language]"
    end
  end
end
