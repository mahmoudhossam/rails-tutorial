class ArticlesController < ApplicationController
	
	def new
	end
	
	def index
	end
	
	def create
		@article = Article.new(:title => params[:article][:title], :text => params[:article][:text])
		@article.save
		redirect_to @article
	end
	
	def show
		@article = Article.find(params[:id])
	end
end
