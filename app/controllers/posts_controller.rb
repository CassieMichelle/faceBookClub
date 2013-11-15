class Posts < ApplicationController

	def create
		post = Post.create(comment: params[comment])
		render json: new_book
	end
	def add
		user = User.find(params[:user_id])
		new_book = Book.find(params[:book_id])
		check1 = current_user.books << new_book
	   	
	    check2 = user.books << new_book

	    render json: true


	end
end