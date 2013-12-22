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

ActiveRecord::Schema.define(:version => 20131222121619) do

  create_table "my_timeline_events", :force => true do |t|
    t.text     "description"
    t.datetime "happened_on"
    t.string   "icon_name"
    t.string   "external_link"
    t.string   "original_id"
    t.boolean  "public",        :default => true
    t.integer  "importance",    :default => 5
    t.integer  "user_id"
    t.integer  "linkable_id"
    t.string   "linkable_type"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  create_table "my_timeline_health_graph_cardio_activities", :force => true do |t|
    t.datetime "happened_on"
    t.float    "meters"
    t.float    "duration"
    t.integer  "calories"
    t.string   "routefile"
    t.string   "uri"
    t.text     "notes"
    t.string   "equipment"
    t.float    "climb"
    t.string   "activity_type"
    t.integer  "event_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "my_timeline_posts", :force => true do |t|
    t.text     "full_text"
    t.datetime "happened_on"
    t.integer  "event_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "my_timeline_settings", :force => true do |t|
    t.string   "var",         :null => false
    t.text     "value"
    t.integer  "target_id",   :null => false
    t.string   "target_type", :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "my_timeline_settings", ["target_type", "target_id", "var"], :name => "index_my_timeline_settings_on_target_type_and_target_id_and_var", :unique => true

  create_table "my_timeline_twitter_tweets", :force => true do |t|
    t.datetime "happened_on"
    t.text     "uri"
    t.text     "post"
    t.integer  "event_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
