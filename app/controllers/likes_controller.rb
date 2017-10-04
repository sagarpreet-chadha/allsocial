class LikesController < ApplicationController
 before_action :authenticate_user!

  def post_likes
  	@l = Like.new 
  	@l.user = current_user
  	@l.likeable_type = "post"
  	@l.likeable_id = params[:id].to_i 

  	@templ = Like.where(user_id: current_user.id , likeable_type: "post" , likeable_id: params[:id].to_i) ;

  	if(@templ.count == 0)
  		@l.save 
  	

  	end
  end

end
