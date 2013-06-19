class Bio < ActiveRecord::Base
  attr_accessible :name, :content

  validates :user_id, presence: true
  
end
