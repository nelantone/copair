class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true, uniqueness: true
  # validates :fluent_language, presence: true
  # validates :contact_preference, presence: true
  # validates :shared_screen_tool, presence: true
  # mount_uploader :picture, ImageUploader
end
