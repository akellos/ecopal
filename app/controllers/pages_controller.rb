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
    # @number_of_days = number_of_days_passed(@user)
    @list_of_days = ((@user.last_sign_in_at.to_date - rand(5))..(Date.today))
  end

  # def number_of_days_passed(user)
  #   date_now = (Date.today + 5)
  #   last_sign_in = user.last_sign_in_at.to_date
  #   number_of_days = (date_now - last_sign_in).to_i
  #   return number_of_days
  # end
end
