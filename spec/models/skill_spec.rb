# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Skill, type: :model do
  let(:skill) { build(:skill) }

  it { should have_many(:users).through(:matches) }

  describe 'attributes' do
    it 'has correct value and datatypes' do
      expect(skill).to have_attributes(name: 'ruby', level: 4.5)
    end
  end
end
