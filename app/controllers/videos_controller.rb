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
		@search = Sunspot.search Video do
    		fulltext params[:search]
    		paginate page: params[:page], per_page: 10
    		order_by(:created_at, :desc )
    	end

    	@videos = @search.results
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
