class Photo < ActiveRecord::Base
	belongs_to :user
	belongs_to :place

	validates :caption, :presence => true  
	validates :picture, :presence => true

	mount_uploader :picture, PictureUploader
end
