class GroupsController < ApplicationController

	def index


	end




	def create
	  group_user = current_user.groups.build(:user_id => params[:user_id])
	  user = User.find(params[:friend_id])

	  if group_user.save
	  	friendship2 = user.groups.create(:user_id => current_user.id)
		flash[:notice] = 'Added friend to group'
		redirect_to profile_path(current_user.screen_name)
	  else 
	  	flash[:notice] = 'Unable to add friend to group'
	  	redirect_to profile_path(current_user.screen_name)
	  end
	
	end

	def search
	    users = []
	     if name = params[:name]
	        users = current_user.friends.where("first_name like ?", "%#{name}%")
	     end
	     render json: users.to_json
	end
	
end