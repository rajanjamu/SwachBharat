class AddAphotoToCleans < ActiveRecord::Migration
  def change
    add_column :cleans, :aphoto, :string
  end
end
