class CreateSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :skills do |t|
      t.string      :name
      t.float       :level
      t.timestamps
    end
    add_index :skills, :name, unique: true
    add_index :skills, :level, unique: true
  end
end