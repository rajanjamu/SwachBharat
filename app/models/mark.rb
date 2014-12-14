class Mark < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
end
