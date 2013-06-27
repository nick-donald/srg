class StaticPagesController < ApplicationController
  def home
  	@news_articles = Article.select { |article| article.article_type == "Industry News" && article.enabled == true }
    @srg_articles = Article.select { |article| article.article_type == "SRG News" && article.enabled == true }

  	createds = @news_articles.map(&:created_at)
    srg_createds = @srg_articles.map(&:created_at)

  	@create_max = createds.max
    @srg_create_max = srg_createds.max

  	@first_article = Article.find_by_created_at(@create_max)
    @first_srg_article = Article.find_by_created_at(@srg_create_max)

    videos = Video.select { |video| video.enabled == true }

    videos_sort = videos.sort! { |a,b| b.created_at <=> a.created_at }

    @video = videos_sort[0]
    @video_1 = videos_sort[1]
    @video_2 = videos_sort[2]

  end

  def help
  end

  def articles
  	@articles = current_user.articles.build
  	@feed_items = current_user.feed.paginate(page: params[:page])
  end
  
end
