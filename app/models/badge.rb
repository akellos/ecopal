class Badge < ApplicationRecord
  has_many :achievements

  def self.check(user)
    if user.score >= 10 && user.score < 30
      badge = Badge.find(1)
      achievement = Achievement.new(user: user, badge: badge)
      achievement.save
    elsif user.score >= 30 && user.score < 60
      badge = Badge.find(2)
      achievement = Achievement.new(user: user, badge: badge)
      achievement.save
    elsif user.score >= 60
      badge = Badge.find(3)
      achievement = Achievement.new(user: user, badge: badge)
      achievement.save
    else
      badge = Badge.find(4)
      achievement = Achievement.new(user: user, badge: badge)
      achievement.save
    end
  end
end
