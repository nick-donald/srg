class Page < ActiveRecord::Base
  attr_accessible :title, :content, :page_type, :url_title, :seo_description, :seo_keywords, :page_order

  validates :user_id, presence: true

  default_scope order: 'page_order ASC'

  extend FriendlyId
  friendly_id :url_title, use: :slugged

  include PgSearch
  multisearchable against: [:title, :content]
  pg_search_scope :search_by_info, :against => [:title, :content]

end
