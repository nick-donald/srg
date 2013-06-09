class SearchController < ApplicationController

	def show
		@search = search(params)
	end

	protected
		def search(options)

		Sunspot.search(Article) do
		 keywords options[:query]
		 order_by :created_at, :desc
		 paginate :page => options[:page]
		end
	end
end
