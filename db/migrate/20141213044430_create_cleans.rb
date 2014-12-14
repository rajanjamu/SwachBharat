class CreateCleans < ActiveRecord::Migration
  def change
    create_table :cleans do |t|
      t.integer :user_id
      t.string :message

      t.timestamps null: false
    end
  end
end
