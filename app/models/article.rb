class Article < ActiveRecord::Base
 	attr_accessible :author, :content, :title, :date
 	validates :user_id, presence: true

 	validates :title, presence: true, length: { maximum: 70 }

 	default_scope order: 'articles.created_at DESC'

end
