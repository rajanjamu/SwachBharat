# == Schema Information
#
# Table name: cleans
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  message    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  aphoto     :string
#  bphoto     :string
#  location   :string
#

require 'test_helper'

class CleanTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
