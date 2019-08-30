class ChallengesController < ApplicationController
  def show
    @challenge = Challenge.find(params[:id])

    @participants = @challenge.trackers
    @markers = @participants.map do |participant|
      {
        lat: participant.user.latitude,
        lng: participant.user.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { participant: participant })
      }

    end
    authorize @challenge
end

  def index
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
