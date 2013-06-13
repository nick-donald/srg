class AddDateToVideos < ActiveRecord::Migration
  def change
  	add_column :videos, :date, :datetime
  end
end
