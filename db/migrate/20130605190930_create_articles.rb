class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :author
      t.string :content
      t.datetime :date
      t.integer :user_id

      t.timestamps
    end
    add_index :articles, [:user_id, :created_at]
  end
end
