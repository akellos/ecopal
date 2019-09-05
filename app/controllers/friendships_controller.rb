class FriendshipsController < ApplicationController
  protect_from_forgery with: :exception
  skip_after_action :verify_authorized


  def create
    # is this bulk addition or individual addition?
    # if params.include?(:friend_id) #individual e.g. "Add friend" link

    #   @new_friendships = Friendship.create_reciprocal_for_ids(current_user.id, params[:friend_id])
    # else
    #   params[:user][:friend_ids].each do |f_id|
    #     @new_friendships = Friendship.create_reciprocal_for_ids(current_user.id, f_id)
    #   end
    # end

    if params[:friendship].present?
      sender_friendship = Friendship.new(sender: User.find(current_user.id), recipient: User.find(params[:friendship][:recipient_id]), status: "pending")
      recipient_friendship = Friendship.new(sender: User.find(params[:friendship][:recipient_id]), recipient: User.find(current_user.id), status: "pending")
    else
      sender_friendship = Friendship.new(sender: User.find(current_user.id), recipient: User.find(params[:user]), status: "pending")
      recipient_friendship = Friendship.new(sender: User.find(params[:user]), recipient: User.find(current_user.id), status: "pending")
    end

      outcome = sender_friendship.save && recipient_friendship.save
    if outcome
      flash[:notice] = 'You now have a new friend!!'
    else
      flash[:alert] = 'Something went wrong...'
    end

    redirect_to dashboard_path
  end

  def destroy
    Friendship.destroy_recriprocal_for_ids(current_user.id, params[:friend_id])
    redirect_to(request.referer)
  end


end
