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
<<<<<<< HEAD
  # has_many :sent_friendships, :class_name => 'Friendship', :foreign_key => 'sender_id'
  has_many :recipient, :class_name => 'Friendship', :foreign_key => 'recipient_id'
  has_many :friendships, dependent: :destroy
  # has_many :friends, through: :friendships
=======

  mount_uploader :image, PhotoUploader
>>>>>>> 02388036f477c0c0ae1060aae3e668eaff09aa18
end
