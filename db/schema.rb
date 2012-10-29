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

ActiveRecord::Schema.define(:version => 20121028230057) do

  create_table "clouds", :force => true do |t|
    t.integer  "user_id"
    t.string   "email"
    t.string   "picture_path"
    t.string   "cv_path"
    t.string   "provider"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "token"
    t.string   "secret"
    t.integer  "primary_for"
  end

  create_table "networks", :force => true do |t|
    t.integer  "user_id"
    t.string   "email"
    t.string   "name"
    t.string   "nickname"
    t.string   "picture"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "provider"
    t.integer  "uid"
    t.string   "token"
    t.string   "secret"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_hash"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end