class Morepicture < ActiveRecord::Base
	belongs_to :car
	mount_uploader :extra_picture, PictureUploader
end
