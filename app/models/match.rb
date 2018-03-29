# frozen_string_literal: true

class Match < ApplicationRecord
  belongs_to :skill
  belongs_to :user
end
