class ChangeSkillsColumnsType < ActiveRecord::Migration[5.1]
  def change
    change_column(:users, :future_skills,  "varchar[] USING (string_to_array(future_skills, ','))")
    change_column(:users, :present_skills,  "varchar[] USING (string_to_array(present_skills, ','))")
  end
end
