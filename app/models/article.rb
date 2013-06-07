class Article < ActiveRecord::Base
 	attr_accessible :author, :content, :title, :date, :photo, :short_description,
 	 :publication_name, :publication_link, :article_type
 	validates :user_id, presence: true

 	validates :title, presence: true, length: { maximum: 70 }

 	default_scope order: 'articles.created_at DESC'

 	has_attached_file :photo

 	scope :recent, limit: 1, order: 'created_at DESC'

end
