class Challenge < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_name_and_address_and_description, :against => {
    :name => 'B',
    :address => 'A',
    :description => 'C'
    }
  has_many :trackers
  has_many :users, through: :trackers
  belongs_to :user
  mount_uploader :image, PhotoUploader
end
