class Location < ActiveRecord::Base
  belongs_to :user
  mount_uploader :apt_image, AptImageUploader
end
