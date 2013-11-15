class ForumsConstraint
	
	def self.matches?(request)
	    book = Book.find_by_title(request.params[:title]) rescue nil
	    book.present?
	end

	

end