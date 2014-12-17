class AddMarkToCleans < ActiveRecord::Migration
  def change
    add_reference :cleans, :mark, index: true
    add_foreign_key :cleans, :marks
  end
end
