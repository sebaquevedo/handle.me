class Activity < ApplicationRecord
	has_many :user_activities
	has_many :users, through: :user_activities
	has_many :reservations
	mount_uploader :photo, PhotoUploader
end
