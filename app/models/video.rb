class Video < ActiveRecord::Base
  attr_accessible :title, :description, :embed_link, :publication, :publication_link, :photo, :date, :enabled

  validates :user_id, presence: true


  has_attached_file :photo, url: "/assets/products/:id/:style/:basename.:extension", path: ":rails_root/public/assets/products/:id/:style/:basename.:extension"

  searchable do
		text :description
		date :created_at
		text :title
	end
end