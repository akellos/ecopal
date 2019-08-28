class TrackersController < ApplicationController
  def create
    @challenge = Challenge.find(params[:challenge_id])
    @tracker = Tracker.new
    @tracker.challenge = @challenge
    @tracker.completed = false
    @tracker.user = current_user
    if @tracker.save
      redirect_to dashboard_path
    else
      redirect_to challenge_path(@challenge)
    end
  end

  def days_passed
    @days_since_last_sign_in = (@tracker.user.last_sign_in_at..Date.today).count
  end

end
