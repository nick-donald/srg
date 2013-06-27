class PagesController < ApplicationController
	before_filter :signed_in_user, only: [:create, :destroy, :edit]

	def create
		@page = current_user.pages.build(params[:page])
		if @page.save
			flash[:success] = "Page Posted"
			redirect_to current_user
		else
			render 'static_pages/home'
		end
	end

	def show
		@page = Page.find(params[:id])
		@pages = Page.all
	end

	def edit
		@page = Page.find(params[:id])
	end

	def update
		@page = Page.find(params[:id])
		if @page.update_attributes(params[:page])
			flash[:success] = "Page updated"
			redirect_to current_user
		else
			render 'edit'
		end
	end

	def destroy
		@page = Page.find(params[:id]).destroy
		flash[:success] = "Page deleted"
		redirect_to current_user
	end

end
