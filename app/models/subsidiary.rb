class Subsidiary < ApplicationRecord
	has_many :ubications
	has_many :activities
	mount_uploader :photo, PhotoUploader
	geocoded_by :address
	after_validation :geocode
end
