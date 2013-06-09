class StaticPagesController < ApplicationController
  def home
  	@news_articles = Article.select { |article| article.article_type == "Industry News" }
    @srg_articles = Article.select { |article| article.article_type == "SRG News" }

  	createds = @news_articles.map(&:created_at)
    srg_createds = @srg_articles.map(&:created_at)

  	@create_max = createds.max
    @srg_create_max = srg_createds.max

  	@first_article = Article.find_by_created_at(@create_max)
    @first_srg_article = Article.find_by_created_at(@srg_create_max)

    

  	# @first_article2 = Article.find_by_id(@articles.order('value DESC').first)
  end

  def help
  end

  def articles
  	@articles = current_user.articles.build
  	@feed_items = current_user.feed.paginate(page: params[:page])
  end
end
