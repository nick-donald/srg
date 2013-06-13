class SearchController < ApplicationController

	def show
		@search = search(params[:search])
		@results = @search.results
	end

	def index
		@search = Sunspot.search(params[:search])
		@results = @search.results
	end

	protected
		def search(query)
			Sunspot.search Article, Video do
				fulltext query
			end
		end
end