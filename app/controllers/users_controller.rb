class UsersController < ApplicationController
  helper :profile
  # before_filter :protect
  

  def index

  	 @users = User.search(params[:last_name])
  	
  end

  

end