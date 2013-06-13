class Article < ActiveRecord::Base
 	attr_accessible :author, :content, :title, :date, :photo, :short_description,
 	 :publication_name, :publication_link, :article_type, :enabled, :seo_title, :seo_description, :seo_keywords
 	validates :user_id, presence: true

 	validates :title, presence: true, length: { maximum: 80 }

 	default_scope order: 'articles.created_at DESC'

 	has_attached_file :photo, url: "/assets/products/:id/:style/:basename.:extension", path: ":rails_root/public/assets/products/:id/:style/:basename.:extension"

 	scope :recent, limit: 1, order: 'created_at DESC'

 	searchable do
		text :content
		text :title
		date :created_at
	end

end
