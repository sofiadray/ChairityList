class PostsController < ApplicationController

	def index
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)

		if @post.save
			flash[:message] = "Listing created"
			redirect_to post_path(@post.id)
		else
			render :new
		end

	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
		@post.update_attributes
	end

	def destroy
	end

private

	def post_params
		params.require(:post).permit(:title, :content, :charity_id, :user_id)
	end


end
