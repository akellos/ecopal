class Challenge < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_name_and_address_and_description, against: {
    name: 'B',
    address: 'A',
    description: 'C'
  }

  belongs_to :user
  has_many :trackers
  before_save :assign_reward, :random_color
  has_many :users, through: :trackers

  mount_uploader :photo, PhotoUploader

  private

  def assign_reward
    self[:reward] = duration * 50
  end

  def random_color
    self[:bg_color] = ['#E0D1AF', '#E0D1AF', '#F3AFC5', '#FFD633', '#8BCFBA'].sample
  end
end
