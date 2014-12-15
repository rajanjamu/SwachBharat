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

class Clean < ActiveRecord::Base
  mount_uploader :aphoto, PhotoUploader
  mount_uploader :bphoto, PhotoUploader
end
