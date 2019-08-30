class TrackersController < ApplicationController
  def create
    @challenge = Challenge.find(params[:challenge_id])
    @tracker = Tracker.new
    authorize @tracker
    @tracker.challenge = @challenge
    @tracker.completed = false
    @tracker.user = current_user
    @tracker.time = (Date.today..(Date.today + @challenge.duration)).to_a.map(&:to_s)
    @tracker.pending = @tracker.time
    if @tracker.save
      redirect_to dashboard_path
    else
      redirect_to challenges_path(@challenge)
    end
  end
end
