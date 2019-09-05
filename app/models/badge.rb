class Badge < ApplicationRecord
  has_many :achievements

  def self.check(user)
    if user.score >= 400 && user.score < 800
      unless user.badges.include? Badge.find(4)
        badge = Badge.find(4)
        achievement = Achievement.new(user: user, badge: badge)
        achievement.save
      end
      unless user.badges.include? Badge.find(1)
        badge = Badge.find(1)
        achievement = Achievement.new(user: user, badge: badge)
        achievement.save
      end
    elsif user.score >= 800 && user.score < 1600
      unless user.badges.include? Badge.find(4)
        badge = Badge.find(4)
        achievement = Achievement.new(user: user, badge: badge)
        achievement.save
      end
      unless user.badges.include? Badge.find(1)
        badge = Badge.find(1)
        achievement = Achievement.new(user: user, badge: badge)
        achievement.save
      end
      unless user.badges.include? Badge.find(2)
        badge = Badge.find(2)
        achievement = Achievement.new(user: user, badge: badge)
        achievement.save
      end
    elsif user.score >= 1600
      unless user.badges.include? Badge.find(4)
        badge = Badge.find(4)
        achievement = Achievement.new(user: user, badge: badge)
        achievement.save
      end
      unless user.badges.include? Badge.find(1)
        badge = Badge.find(1)
        achievement = Achievement.new(user: user, badge: badge)
        achievement.save
      end
      unless user.badges.include? Badge.find(2)
        badge = Badge.find(2)
        achievement = Achievement.new(user: user, badge: badge)
        achievement.save
      end
      unless user.badges.include? Badge.find(3)
        badge = Badge.find(3)
        achievement = Achievement.new(user: user, badge: badge)
        achievement.save
      end
    else
      unless user.badges.include? Badge.find(4)
        badge = Badge.find(4)
        achievement = Achievement.new(user: user, badge: badge)
        achievement.save
      end
    end
  end
end

