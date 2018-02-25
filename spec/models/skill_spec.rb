require 'rails_helper'

RSpec.describe Skill, type: :model do
  let(:skill) { build(:skill) }

  it { should have_many(:users).through(:matches) }

  describe 'attributes' do
    it 'has a String name attribute' do
      expect(described_class).to have_attribute(:name_and_level).of_type(Hash)
    end

    it 'has String key and Float value type' do
      expect(skill.name_and_level).to match a_hash_including(ruby: 5.0, rails: 5.0, git: 5.0, css: 5.0, html: 5.0, linux: 5.0, js: 5.0)
    end
  end
end
