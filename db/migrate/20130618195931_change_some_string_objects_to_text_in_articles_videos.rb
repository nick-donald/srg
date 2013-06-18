class ChangeSomeStringObjectsToTextInArticlesVideos < ActiveRecord::Migration
  def up
  	change_column :articles, :short_description, :text
  	change_column :articles, :seo_description, :text
  	change_column :videos, :description, :text
  	change_column :videos, :seo_description, :text
  end

  def down
  end
end
