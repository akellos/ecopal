class Friendship < ApplicationRecord
  belongs_to :sender, :class_name => 'User'
  belongs_to :recipient, :class_name => 'User'
  belongs_to :user, foreign_key: true
  belongs_to :friend, class_name: "User" #this line says you'll have another foreign key in here called friend_id, but it's actually a member of the model User

  def self.create_reciprocal_for_ids(user_id, friend_id)
    user_friendship = Friendship.create(user_id: user_id, friend_id: friend_id)

    friend_friendship = Friendship.create(user_id: friend_id, friend_id: user_id)

    [user_friendship, friend_friendship]
  end

  def self.destroy_recriprocal_for_ids(user_id, friend_id)
    friendship1 = Friendship.find_by(user_id: user_id, friend_id: friend_id)
    friendship2 = Friendship.find_by(user_id: friend_id, friend_id: user_id)
    friendship1.destroy
    friendship2.destroy
  end


end
