class ChallengesController < ApplicationController
  def show
    @challenge = Challenge.find(params[:id])
  end

  def index
    @challenges = Challenge.all
  end

  def new
    @user = current_user
    @challenge = Challenge.new
  end

  def create
    @challenge = Challenge.new(challenge_params)
    @user = current_user
    @challenge.user = @user
    if @challenge.save
      redirect_to challenges_path
    else
      render :new
    end
  end

  def edit
    @challenge = Challenge.find(params[:id])
  end

  def update
    @challenge = Challenge.find(params[:id])
    @challenge.update(challenge_params)
    redirect_to challenge_path(@challenge)
  end

  def destroy
    @challenge = Challenge.find(params[:id])
    @challenge.destroy
    redirect_to challenge_path
  end

  private

  def challenge_params
    params.require(:challenge).permit(:name, :duration, :start_date, :end_date, :description, :image, :reward, :address)
  end
end
