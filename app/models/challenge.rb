class Challenge < ApplicationRecord
  has_many :trackers
  has_many :users, through: :trackers
  belongs_to :user
end
