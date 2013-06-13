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

ActiveRecord::Schema.define(:version => 20130612163503) do

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.string   "author"
    t.string   "content"
    t.datetime "date"
    t.integer  "user_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "short_description"
    t.string   "publication_name"
    t.string   "publication_link"
    t.string   "article_type"
    t.boolean  "enabled"
    t.string   "seo_title"
    t.string   "seo_description"
    t.string   "seo_keywords"
  end

  add_index "articles", ["user_id", "created_at"], :name => "index_articles_on_user_id_and_created_at"

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

  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"
  add_index "users", ["username"], :name => "index_users_on_username", :unique => true

  create_table "videos", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "embed_link"
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
    t.string   "seo_description"
    t.string   "seo_keywords"
  end

end