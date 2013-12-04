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

ActiveRecord::Schema.define(:version => 20131204190828) do

  create_table "categories", :force => true do |t|
    t.string   "title"
    t.boolean  "state",      :default => true
    t.integer  "position",   :default => 0
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "comments", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "user_id"
    t.integer  "forum_id"
    t.integer  "conversations_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "comments", ["conversations_id"], :name => "index_comments_on_conversations_id"
  add_index "comments", ["forum_id"], :name => "index_comments_on_forum_id"
  add_index "comments", ["user_id"], :name => "index_comments_on_user_id"

  create_table "conversations", :force => true do |t|
    t.string   "title"
    t.string   "category"
    t.text     "body"
    t.integer  "forum_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "conversations", ["forum_id"], :name => "index_conversations_on_forum_id"
  add_index "conversations", ["user_id"], :name => "index_conversations_on_user_id"

  create_table "forums", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.boolean  "state",        :default => true
    t.integer  "topics_count", :default => 0
    t.integer  "posts_count",  :default => 0
    t.integer  "position",     :default => 0
    t.integer  "category_id"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  create_table "marks", :force => true do |t|
    t.date     "date_from"
    t.date     "date_to"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "posts", :force => true do |t|
    t.text     "body"
    t.integer  "forum_id"
    t.integer  "topic_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "profiles", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "mobile"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "county"
  end

  add_index "profiles", ["user_id"], :name => "index_profiles_on_user_id"

  create_table "sites", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "topics", :force => true do |t|
    t.string   "title"
    t.integer  "hits",        :default => 0
    t.boolean  "sticky",      :default => false
    t.boolean  "locked",      :default => false
    t.integer  "posts_count"
    t.integer  "forum_id"
    t.integer  "user_id"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",                    :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                            :null => false
    t.datetime "updated_at",                                            :null => false
    t.string   "username",               :limit => nil
    t.boolean  "admin"
    t.integer  "topics_count",                          :default => 0
    t.integer  "posts_count",                           :default => 0
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
