class ArticlesController < ApplicationController
	def new
	end

	def create
		@articles = Article.new
		@articles.title = params[:title]
		@articles.body = params[:body]
		@articles.author = params[:author]
		@articles.save
		redirect_to'/articles/new'
	end
end
