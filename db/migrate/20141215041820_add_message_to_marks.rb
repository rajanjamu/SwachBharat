class AddMessageToMarks < ActiveRecord::Migration
  def change
    add_column :marks, :message, :text
  end
end
