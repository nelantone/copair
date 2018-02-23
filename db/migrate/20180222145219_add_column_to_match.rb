class AddColumnToMatch < ActiveRecord::Migration[5.1]
  def change
    def change
       add_column :matchs, :user_id, :integer
       add_column :matchs, :skill_id, :integer
     end
  end
end
