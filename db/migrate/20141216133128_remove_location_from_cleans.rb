class RemoveLocationFromCleans < ActiveRecord::Migration
  def change
    remove_column :cleans, :location, :string
  end
end
