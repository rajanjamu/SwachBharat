# == Schema Information
#
# Table name: marks
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  location   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  photo      :string
#  message    :text
#

require 'test_helper'

class MarkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
