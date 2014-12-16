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

class Mark < ActiveRecord::Base
  belongs_to :user
  has_one :clean

  mount_uploader :photo, PhotoUploader
end
