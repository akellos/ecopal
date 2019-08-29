class UsersController < ApplicationController

  def dashboard
    @user_badge = Badge.check(current_user)
    @badges = User.find(params[:id]).badges
  end

end


