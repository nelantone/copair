# spec/models/user_spec.rb

require 'rails_helper'

describe User do
  let(:user) { build(:user) }

  it 'has a valid factory user' do
    expect(user).to be_valid
  end

  it 'is saving a valid factory instance' do
    user_item = create(:user)
    expect(user_item).to be_valid
    user_item.delete
  end

  it 'is invalid without an email' do
    empty_email = build(:user, email: nil)

    expect(empty_email).not_to be_valid
  end

  it 'is invalid without first_name' do
    expect { create(:user, first_name: nil) }.to raise_error(ActiveRecord::RecordInvalid)
  end

  it 'is a short password' do
    with_short_password = build(:user, password: '123')

    expect(with_short_password).not_to be_valid
    expect { create(:user, first_name: nil) }.to raise_error(ActiveRecord::RecordInvalid)
  end

  # All the rest of attributes are optional from now.
end
