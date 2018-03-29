class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.belongs_to :user, index: true
      t.belongs_to :skill, index: true
      t.timestamps
    end
  end
end
