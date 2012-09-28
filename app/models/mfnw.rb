class Mfnw < ActiveRecord::Base
  has_many :comments
  mount_uploader :picture, PictureUploader
  attr_accessible :genre, :name, :picture
end
