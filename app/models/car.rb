class Car < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	has_and_belongs_to_many :garages
	mount_uploader :primary_picture, PictureUploader
end
