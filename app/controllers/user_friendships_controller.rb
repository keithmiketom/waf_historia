class UserFriendshipsController < ApplicationController
  before_filter :authenticate_user!
  
  def new
    if params[:friend_id]
      @friend = User.find(params[:friend_id])
      @user_friendship = current_user.user_friendships.new(friend: @friend)
    else  
      flash[:error] = "Friend Required"
    end  
    rescue ActiveRecord::RecordNotFound
      render file: 'public/404', status: :not_found
      
  end
end
