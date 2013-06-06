class ArticlesController < ApplicationController
	before_filter :signed_in_user, only: [:create, :destroy]

	def index
	end

	def create
		@article = current_user.articles.build(params[:article])
		if @article.save
			redirect_to root_url
		else
			render 'staticpages/home'
		end
	end

	def destroy
	end
end
