class AddPageTitleAndSeoToPages < ActiveRecord::Migration
  def change
  	add_column :pages, :url_title, :string
  	add_column :pages, :seo_description, :text
  	add_column :pages, :seo_keywords, :string
  	add_column :pages, :slug, :string
  	add_index :pages, :slug, unique: true
  end
end
