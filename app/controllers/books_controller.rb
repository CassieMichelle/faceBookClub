class BooksController < ApplicationController

	def index
	   @book = Book.new


	end

	def create
		
		new_book = Book.create(:title => params[:title])
		
	end

	def add
		user = User.find(params[:user_id])
		current_user.books << new_book
	   	
	    user.books << new_book
	    redirect_to books_path

	end

	def update 


	end

	def search
	    users = []
	     if name = params[:name]
	        users = current_user.friends.where("first_name like ?", "%#{name}%")
	     end
	     render json: users.to_json
	end
	
end