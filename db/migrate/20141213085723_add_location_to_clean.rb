class AddLocationToClean < ActiveRecord::Migration
  def change
    add_column :cleans, :location, :string
  end
end
