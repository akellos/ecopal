class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  skip_after_action :verify_authorized

  def home
  end

  def dashboard
    if params[:user]
      @user = User.find(params[:user])
    else
      @user = current_user
    end
    @user_badge = Badge.check(@user)
    @badges = @user.badges.first(3)
    @trackers = @user.trackers
    @friendships = Friendship.where(sender: current_user)
    @friends = @friendships.map(&:recipient) << current_user
    @sorted_friends = @friends.sort_by { |friend| -friend.score }
    @top_five_friends = @sorted_friends.first(10)
    # @number_of_days = number_of_days_passed(@user)
    # @list_of_days = ((@user.last_sign_in_at.to_date - rand(5))..(Date.today))
  end

  # def number_of_days_passed(user)
  #   date_now = (Date.today + 5)
  #   last_sign_in = user.last_sign_in_at.to_date
  #   number_of_days = (date_now - last_sign_in).to_i
  #   return number_of_days
  # end
end
