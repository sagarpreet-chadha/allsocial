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

  def post_unlikes
   	
  	@templ = Like.where(user_id: current_user.id , likeable_type: "post" , likeable_id: params[:id].to_i) ;
  	
  	@l=@templ.first.likeable_id ;	
  	@templ.destroy_all 

  end

  def comment_likes
  	@l = Like.new 
  	@l.user = current_user
  	@l.likeable_type = "comment"
  	@l.likeable_id = params[:id].to_i 

  	@templ = Like.where(user_id: current_user.id , likeable_type: "comment" , likeable_id: params[:id].to_i) ;

  	if(@templ.count == 0)
  		@l.save 


  	end
  end

  def comment_unlikes
   	
  	@templ = Like.where(user_id: current_user.id , likeable_type: "comment" , likeable_id: params[:id].to_i) ;
  	
  	@l=@templ.first.likeable_id ;	
  	@templ.destroy_all 

  end


end
