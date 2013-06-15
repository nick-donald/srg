class VideosController < ApplicationController
	before_filter :signed_in_user, only: [:create, :destroy]

	def show
		@video = Video.find(params[:id])
	end

	def create
		@video = current_user.videos.build(params[:video])
		if @video.save
			flash[:success] = "Video Posted"
			redirect_to current_user
		else
			render 'static_pages/home'
		end
	end

	def index
    	if params[:search] == nil
    		@videos = Video.paginate(page: params[:page], per_page: 10)
    	else
    		@videos = Video.search_by_info(params[:search]).page(params[:page]).per_page(10)
    	end
	end

	def destroy
		Video.find(params[:id]).destroy
		flash[:success] = "Video deleted"
		redirect_to current_user
	end

	def edit
		@video = Video.find(params[:id])
	end

	def update
		@video = Video.find(params[:id])
		if @video.update_attributes(params[:video])
			redirect_to videos_path
		else
			render 'edit'
		end
	end
end
