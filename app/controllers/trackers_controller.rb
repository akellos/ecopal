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
end
