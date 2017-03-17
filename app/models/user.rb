class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :reservations
  has_many :user_activities
  has_many :activities,through: :user_activities
  enum role: [:guest, :user, :teacher, :admin]
end
