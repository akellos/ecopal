class Challenge < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_name_and_address_and_description, against: {
    name: 'B',
    address: 'A',
    description: 'C'
  }

  belongs_to :user
  has_many :trackers
  has_many :users, through: :trackers

  mount_uploader :photo, PhotoUploader
end
