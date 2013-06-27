# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130627175438) do

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.string   "author"
    t.text     "content"
    t.datetime "date"
    t.integer  "user_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.text     "short_description"
    t.string   "publication_name"
    t.string   "publication_link"
    t.string   "article_type"
    t.boolean  "enabled"
    t.string   "seo_title"
    t.text     "seo_description"
    t.string   "seo_keywords"
  end

  create_table "bios", :force => true do |t|
    t.string   "name"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
  end

  create_table "pages", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "page_type"
    t.string   "url_title"
    t.text     "seo_description"
    t.string   "seo_keywords"
    t.string   "slug"
    t.integer  "page_order"
  end

  add_index "pages", ["page_order"], :name => "index_pages_on_page_order"
  add_index "pages", ["slug"], :name => "index_pages_on_slug", :unique => true
  add_index "pages", ["user_id", "created_at"], :name => "index_pages_on_user_id_and_created_at"

  create_table "pg_search_documents", :force => true do |t|
    t.text     "content"
    t.integer  "searchable_id"
    t.string   "searchable_type"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "searches", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "username"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           :default => false
  end

  create_table "videos", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.text     "embed_link"
    t.string   "publication"
    t.string   "publication_link"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "user_id"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.datetime "date"
    t.boolean  "enabled"
    t.string   "seo_title"
    t.text     "seo_description"
    t.string   "seo_keywords"
  end

end
