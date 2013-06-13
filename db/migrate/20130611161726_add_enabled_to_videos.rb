class AddEnabledToVideos < ActiveRecord::Migration
  def change
  	add_column :videos, :enabled, :boolean
  end
end
