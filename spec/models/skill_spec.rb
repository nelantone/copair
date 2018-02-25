require 'rails_helper'

RSpec.describe Skill, type: :model do
  let(:skill) { build(:skill) }

  it { should have_many(:users).through(:matches) }
end
