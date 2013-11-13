class WelcomeController < ApplicationController

	def index
		@title = 'Welcome Page'
		
		if user_signed_in? 
			redirect_to profile_path(current_user.screen_name)
		end
	end

end
