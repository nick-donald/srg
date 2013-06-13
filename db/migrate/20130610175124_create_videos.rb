class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
    	t.string :title
    	t.string :description
    	t.string :embed_link
    	t.string :publication
    	t.string :publication_link
    	
    	t.timestamps
    end
  end
end
