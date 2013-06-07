class ArticlesController < ApplicationController
	before_filter :signed_in_user, only: [:create, :destroy]

	def index
		@articles = Article.paginate(page: params[:page],  per_page: 3)
	end

	def create
		@article = current_user.articles.build(params[:article])
		if @article.save
			redirect_to users_path
		else
			render 'static_pages/home'
		end
	end

	def destroy
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
