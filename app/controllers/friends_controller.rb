class FriendsController < ApplicationController
  before_action :authenticate_user!


  def index
  	@users= User.all 
  	@allfriends = Friendship.all ;
  end

  def add
  	@buttonid = params[:id].to_i ;
  	@newfriend = Friendship.new ;
  	@newfriend.user = current_user ;
  	@newfriend.friend_id = @buttonid ;
  	@newfriend.save ;
  end

end
