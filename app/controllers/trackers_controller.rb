class TrackersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def create
    @challenge = Challenge.find(params[:challenge_id])
    @tracker = Tracker.new
    authorize @tracker
    @tracker.challenge = @challenge
    @tracker.completed = false
    @tracker.user = current_user
    # @tracker.time = (Date.today..(Date.today + @challenge.duration)).to_a.map(&:to_s)
    # @tracker.pending = @tracker.time
    if @tracker.save
      (Date.today..(Date.today + @challenge.duration)).to_a.each do |date|
        td = TrackerDay.create(tracker: @tracker, date: date.to_s)
      end
      # raise
      redirect_to dashboard_path
    else
      # raise
      redirect_to challenges_path(@challenge)
    end
  end

  def update_tracker_days
    @tracker = Tracker.find(params[:id])
    days = params[:update_tracker_days][:days].select {|date| !date.blank? }
    tds = TrackerDay.where(date: days, tracker: @tracker)
    tds.each do |td|
      td.update(completed: true)
    end
    authorize(@tracker)
    redirect_to challenge_tracker_path(@tracker)
  end

  def update
    @tracker = Tracker.find(params[:id])
    if @tracker.update(tracker_params)
      flash[:notice] = 'Post updated!'
    else
      flash[:alert] = 'Something wrong'
    end
    raise
    authorize(@tracker)
    redirect_to challenge_tracker_path(@tracker)
  end

  def show
    @tracker = Tracker.find(params[:id])
    authorize(@tracker)
    @user = @tracker.user

    @challenge = @tracker.challenge
  end

  private

  def tracker_params
    params.require(:tracker).permit
  end
end
