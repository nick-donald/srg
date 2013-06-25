class Article < ActiveRecord::Base
 	attr_accessible :author, :content, :title, :date, :photo, :short_description,
 	 :publication_name, :publication_link, :article_type, :enabled, :seo_title, :seo_description, :seo_keywords
 	validates :user_id, presence: true

 	validates :title, presence: true, length: { maximum: 80 }

 	default_scope order: 'articles.created_at DESC'

 	has_attached_file :photo,
                      :storage => :s3,
                      :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
                      :path => ":attachment/videos/:id/:style.:extension",
                      :bucket => 'srgbucket'

 	scope :recent, limit: 1, order: 'created_at DESC'

 	include PgSearch
 	multisearchable against: [:title, :short_description]
 	pg_search_scope :search_by_info, :against => [:title, :short_description]

 	def to_param
 		"#{id} #{title}".parameterize
 	end

end
