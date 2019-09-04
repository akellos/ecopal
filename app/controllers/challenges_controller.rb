class ChallengesController < ApplicationController
skip_before_action :authenticate_user!, :only => [:index, :show]

  def show
    @challenge = Challenge.find(params[:id])
    @participants = @challenge.trackers.map { |tracker| tracker.user }
    @unique_participants = @participants.uniq { |participant| participant.location }
    @markers = @unique_participants.map do |participant|
      {
        lat: participant.latitude,
        lng: participant.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { location: participant.location })
      }
    end
    @participants = @challenge.trackers #used to fix show page
    @not_participating = @participants.all? do |participant|
      participant.user != current_user
    end
    # raise
    @random_participants = @participants.sample(6)
    authorize @challenge
end

  def index
    # skip_authorization
    @users = User.all
    @sorted_users = @users.sort_by { |user| -user.score }
    @top_five_users = @sorted_users.first(10)
    @challenges = policy_scope(Challenge)
  end

  def new
    @user = current_user
    @challenge = Challenge.new
    authorize @challenge
  end

  def create
    @challenge = Challenge.new(challenge_params)
    @user = current_user
    @challenge.user = @user
    @challenge.image = params[:image]
    authorize @challenge
    if @challenge.save
      redirect_to challenges_path
    else
      render :new
    end
  end

  def edit
    @challenge = Challenge.find(params[:id])
    authorize @challenge
  end

  def update
    @challenge = Challenge.find(params[:id])

    @challenge.update(challenge_params)
    authorize @challenge
    redirect_to challenge_path(@challenge)
  end

  def destroy
    @challenge = Challenge.find(params[:id])
    authorize @challenge
    @challenge.destroy
    redirect_to challenge_path
  end

  private

  def challenge_params
    params.require(:challenge).permit(:name, :duration, :start_date, :end_date, :description, :photo, :reward, :address)
  end
end
