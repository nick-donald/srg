class AddSeoToArticlesVideos < ActiveRecord::Migration
  def change
  	add_column :articles, :seo_title, :string
  	add_column :articles, :seo_description, :string
  	add_column :articles, :seo_keywords, :string

  	add_column :videos, :seo_title, :string
  	add_column :videos, :seo_description, :string
  	add_column :videos, :seo_keywords, :string
  end
end
