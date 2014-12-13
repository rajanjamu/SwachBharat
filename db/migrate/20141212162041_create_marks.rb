class CreateMarks < ActiveRecord::Migration
  def change
    create_table :marks do |t|
      t.integer :user_id
      t.string :location

      t.timestamps null: false
    end
  end
end
