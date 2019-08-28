class ChallengesController < ApplicationController
  def show
    @challenge = Challenge.find(params[:id])
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
    @challenge.update(params[:id])
    authorize @challenge
  end

  def destroy
    @challenge = Challenge.find(params[:id])
    authorize @challenge
    @challenge.destroy
    redirect_to challenge_path
  end

  private

  def challenge_params
    params.require(:challenge).permit(:name, :duration, :start_date, :end_date, :description, :image, :reward, :address)
  end
end
