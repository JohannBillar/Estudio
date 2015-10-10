class Place < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	has_many :photos
	
	geocoded_by :address
	after_validation :geocode

	validates :name, :presence => true, :uniqueness => true, :length => { :maximum => 50, :minimum => 3 }
	validates :address, :presence => true, :length => { :maximum => 300, :minimum => 10}
	validates :description, :presence => true, :length => { :maximum => 300, :minimum => 10 }  
end
