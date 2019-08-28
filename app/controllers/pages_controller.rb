class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    if params[:user]
      @user = User.find(params[:user])
    else
      @user = current_user
    end
  end
end
