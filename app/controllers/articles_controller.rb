class PostsController < ApplicationController
	def index
		@Articles = Post.all
	end

	def show
		@Articles= Post.find(params[:id])
	end

	def new
		@Articles= Post.new
	end

	def create
	  @Articles= Post.new
	  @Articlestitle = params[:title]
	  @Articlesdescription = params[:description]
	  @Articlessave
	  redirect_to post_path(@Articles
	end

	def edit
		@Articles= Post.find(params[:id])
	end

	def update
		@Articles= Post.find(params[:id])
		@Articlesupdate(title: params[:title], description: params[:description])
		redirect_to post_path(@Articles
	end
end