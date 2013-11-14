class FriendshipsController < ApplicationController

	def create
	  friendship = current_user.friendships.build(:friend_id => params[:friend_id], :status => 'true')
	  user = User.find(params[:friend_id])

	  if friendship.save
	  	friendship2 = user.friendships.create(:friend_id => current_user.id, :status => 'true')
		flash[:notice] = 'Added friend'
		redirect_to profile_path(current_user.screen_name)
	  else 
	  	flash[:notice] = 'Unable to add friend'
	  	redirect_to profile_path(current_user.screen_name)
	  end
	end

	def destroy_user 
		
		friendship = current_user.friendships.find_by_friend_id(params[:friend_id])
		friendship.destroy
		flash[:notice] = 'Friendship Destroyed'
		redirect_to profile_path(current_user.screen_name)
	end


end