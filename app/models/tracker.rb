class Tracker < ApplicationRecord
  belongs_to :challenge
  belongs_to :user
  has_many :tracker_days
  validates :user, uniqueness: { scope: :challenge }
end
