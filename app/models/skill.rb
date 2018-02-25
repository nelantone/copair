class Skill < ApplicationRecord
  include Virtus.model

  attribute :name_and_level, Hash[Symbol => Float]
  attribute :interest, Array

  has_many :matches
  has_many :users, through: :matches
end
