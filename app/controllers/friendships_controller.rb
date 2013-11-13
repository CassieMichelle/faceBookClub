class FriendshipsController < ApplicationController

	def create
	  @friendship = current_user.friendships.build(:friend_id => params[:friend_id])
	  if @friendship.save
	  	redirect_to profile_path(current_user.screen_name)
	  	flash[:notice] = 'Added friend'
	  else 
	  	flash[:notice] = 'Unable to add friend'
	  	redirect_to profile_path(current_user.screen_name)
	  end
	end

	def destroy 
		@friendship = current_user.friendship.find(params[:id])
		@friendship.destroy
		flash[:notice] = 'Friendship Destroyed'
		redirect_to profile_path(current_user.screen_name)
	end


end