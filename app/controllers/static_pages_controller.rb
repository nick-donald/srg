class StaticPagesController < ApplicationController
  def home
  	@articles = Article.all

  	createds = @articles.map(&:created_at)

  	@create_max = createds.max
  	@first_article = Article.find_by_created_at(@create_max)

  	# @first_article2 = Article.find_by_id(@articles.order('value DESC').first)
  end

  def help
  end

  def articles
  	@articles = current_user.articles.build
  	@feed_items = current_user.feed.paginate(page: params[:page])
  end
end
