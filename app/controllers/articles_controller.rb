class ArticlesController < ApplicationController
	before_filter :signed_in_user, only: [:create, :destroy]

	def index
		@articles = Article.paginate(page: params[:page],  per_page: 3)
	end

	def create
		@article = current_user.articles.build(params[:article])
		if @article.save
			flash[:success] = "Article Posted"
			redirect_to current_user
		else
			render 'static_pages/home'
		end
	end

	def destroy
		Article.find(params[:id]).destroy
		flash[:success] = "Article deleted"
		redirect_to current_user
	end

	def show
		@article = Article.find(params[:id])
	end

	def edit
		@article = Article.find(params[:id])
	end

	def update
		@article = Article.find(params[:id])
		if @article.update_attributes(params[:article])
			redirect_to articles_path
		else
			render 'edit'
		end
	end
end
