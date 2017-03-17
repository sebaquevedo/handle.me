class Ubication < ApplicationRecord
  belongs_to :subsidiary
  has_many :reservations
end
