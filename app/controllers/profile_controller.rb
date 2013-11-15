##look at pdf for @title
##<head>
##    <title><%= @title %></title>
##</head>


class ProfileController < ApplicationController
  def index
      @users = User.all
      @user =  User.find_by_screen_name(params[:screen_name])
  	  @screen_name = current_user.screen_name
      @title = "Profile for #{@screen_name}"
  end

  def edit
    @title = 'Edit User Info'
    
    @user =  User.find_by_screen_name(params[:screen_name])
  
  end

  def update
    @user =  User.find_by_id(params[:id])
    if @user.update_attributes(params[:user])
      flash[:notice] = 'Changes Saved'
      redirect_to profile_path(current_user.screen_name)
    end

  end

  def search
    users = []
     if name = params[:name]
        users = User.where("first_name like ?", "%#{name}%")
     end
     render json: users.to_json
  end

end
