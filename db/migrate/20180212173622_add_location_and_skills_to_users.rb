class AddLocationAndSkillsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :location, :string
    add_column :users, :present_skills, :string
    add_column :users, :future_skills, :string
    add_column :users, :average_skill_level, :float
    add_column :users, :short_goal, :string
    add_column :users, :medium_goal, :string
    add_column :users, :long_goal, :string
    add_column :users, :resume, :string
    add_column :users, :code_reviewer, :boolean
    add_column :users, :social_media_info, :string
  end
end
