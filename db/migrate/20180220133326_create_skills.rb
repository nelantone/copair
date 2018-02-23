class CreateSkills < ActiveRecord::Migration[5.1]
  def change
    enable_extension 'hstore' unless extension_enabled?('hstore')
    create_table :skills do |t|
      t.hstore      :name_and_level
      t.text        :interest
      t.timestamps
    end
    add_index :skills, :name_and_level, using: :gin
  end
end
