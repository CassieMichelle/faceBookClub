class PostsController < ApplicationController

	def create
		post = Post.create(params[:post])
		render json: {post: post, user: current_user}
	end
	def add	

	    render json: true


	end
end