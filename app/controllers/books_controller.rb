class BooksController < ApplicationController

	def index
	   @book = Book.new


	end

	def create
		
		new_book = Book.create(:title => params[:title])
		render json: new_book 
		
	end

	def add
		user = User.find(params[:user_id])
		new_book = Book.find(params[:book_id])
		check1 = current_user.books << new_book
	   	
	    check2 = user.books << new_book

	    render json: true

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
	


private

end