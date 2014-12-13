class AddPhotoToMarks < ActiveRecord::Migration
  def change
    add_column :marks, :photo, :string
  end
end
