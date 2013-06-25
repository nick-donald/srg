class Video < ActiveRecord::Base
  attr_accessible :title, :description, :embed_link, :publication, :publication_link, :photo, 
  :date, :enabled, :seo_title, :seo_description, :seo_keywords

  validates :user_id, presence: true

  include PgSearch

  multisearchable against: [:title, :description]
  pg_search_scope :search_by_info, :against => [:title, :description]


  scope :recent, limit: 1, order: 'created_at DESC'


  has_attached_file :photo,
                    :path => "SRG/srgbucket/videos/:id.:extension"

  def to_param
 	  "#{id} #{title}".parameterize
 	end
end