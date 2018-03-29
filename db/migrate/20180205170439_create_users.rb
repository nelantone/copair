class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :picture
      t.string :contact_preference
      t.string :shared_screen_tool
      t.string :fluent_language

      t.timestamps
    end
  end
end
