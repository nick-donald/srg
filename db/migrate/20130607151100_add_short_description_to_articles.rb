class AddShortDescriptionToArticles < ActiveRecord::Migration
  def change
  	add_column :articles, :short_description, :string
  end
end
