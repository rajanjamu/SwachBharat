class AddBphotoToCleans < ActiveRecord::Migration
  def change
    add_column :cleans, :bphoto, :string
  end
end
