class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  has_many :challenges
  has_many :achievements
  has_many :badges, through: :achievements
  has_many :trackers
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
