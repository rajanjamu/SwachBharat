class Clean < ActiveRecord::Base
  mount_uploader :aphoto, PhotoUploader
  mount_uploader :bphoto, PhotoUploader
end
