class ArticlesController < ApplicationController
	before_filter :signed_in_user, only: [:create, :destroy, :edit]

	def index
		if params[:search] == nil
			@articles = Article.paginate(page: params[:page], per_page: 10)
		else
    		@articles = Article.search_by_info(params[:search]).page(params[:page]).per_page(10)
    	end
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
			flash[:success] = "Article updated"
			redirect_to current_user
		else
			render 'edit'
		end
	end
end
