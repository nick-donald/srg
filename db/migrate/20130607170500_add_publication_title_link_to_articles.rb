class AddPublicationTitleLinkToArticles < ActiveRecord::Migration
  def change
  	add_column :articles, :publication_name, :string
  	add_column :articles, :publication_link, :string
  end
end
