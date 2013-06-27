class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|

   	  t.string :title
   	  t.text :content
      t.integer :user_id

      t.timestamps
    end
    add_index :pages, [:user_id, :created_at]
  end
end
