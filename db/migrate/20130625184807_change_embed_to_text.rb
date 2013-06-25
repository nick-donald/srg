class ChangeEmbedToText < ActiveRecord::Migration
  def up
  	change_column :videos, :embed_link, :text
  end

  def down
  end
end
