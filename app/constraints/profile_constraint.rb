class ProfileConstraint
	
	def self.matches?(request)
	    user = User.find_by_screen_name(request.params[:screen_name]) rescue nil
	    user.present?
	end

	

end