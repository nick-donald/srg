class Bio < ActiveRecord::Base
  attr_accessible :name, :content, :bio_order

  validates :user_id, presence: true

  default_scope order: 'bio_order ASC'
  
end
