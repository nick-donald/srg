class BiosController < ApplicationController
	before_filter :signed_in_user, only: [:create, :destroy]

	def show
		@video = Video.find(params[:id])
	end

	def create
		@bio = current_user.bios.build(params[:bio])
		if @bio.save
			flash[:success] = "Bio Posted"
			redirect_to current_user
		else
			render 'static_pages/home'
		end
	end

	def edit
		@bio = Bio.find(params[:id])
	end

	def update
		@bio = Bio.find(params[:id])
		if @bio.update_attributes(params[:bio])
			flash[:success] = "Bio Updated"
			redirect_to current_user
		else
			render 'edit'
		end
	end

	def index
		@bios = Bio.all
	end

	def destroy
		Bio.find(params[:id]).destroy
		flash[:success] = "Bio deleted"
		redirect_to current_user
	end
end
