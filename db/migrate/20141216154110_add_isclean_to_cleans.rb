class AddIscleanToCleans < ActiveRecord::Migration
  def change
    add_column :cleans, :isclean, :boolean, default: false
  end
end
