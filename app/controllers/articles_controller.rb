class ArticlesController < ApplicationController
	before_action :set_articles,only:[:show,:edit,:update,:destroy]
		# @article = Article.new (form_for使うとき)

	def create
		@article = Article.new(article_params)
		@article.save
		redirect_to show_article_path(@article.id)
	end

	def index
		@articles = Article.all
	end

	def show
	end

	def edit

	end

	def update
		@article.title = params[:title]
		@article.body = params[:body]
		@article.author = params[:author]
		@article.save
		redirect_to show_article_path(@article.id)
	end

	def destroy
		@article.destroy
		redirect_to articles_index_path
	end

	private
	def set_articles
		@article = Article.find(params[:id])
	end

	def article_params
		params.require(:article).permit(:title,:body,:author)
	end

end
