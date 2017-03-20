class Activity < ApplicationRecord
	has_many :user_activities
	has_many :users, through: :user_activities
	has_many :reservations
	belongs_to :subsidiary
	mount_uploader :photo, PhotoUploader
end
