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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150608134242) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "articles", force: :cascade do |t|
    t.integer  "restaurant_id"
    t.text     "description"
    t.date     "publication"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "picture1_file_name"
    t.string   "picture1_content_type"
    t.integer  "picture1_file_size"
    t.datetime "picture1_updated_at"
    t.string   "picture2_file_name"
    t.string   "picture2_content_type"
    t.integer  "picture2_file_size"
    t.datetime "picture2_updated_at"
    t.string   "picture3_file_name"
    t.string   "picture3_content_type"
    t.integer  "picture3_file_size"
    t.datetime "picture3_updated_at"
    t.string   "picture4_file_name"
    t.string   "picture4_content_type"
    t.integer  "picture4_file_size"
    t.datetime "picture4_updated_at"
    t.string   "picture5_file_name"
    t.string   "picture5_content_type"
    t.integer  "picture5_file_size"
    t.datetime "picture5_updated_at"
    t.text     "description_en"
  end

  add_index "articles", ["restaurant_id"], name: "index_articles_on_restaurant_id", using: :btree

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "subject"
    t.text     "message"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "answered",   default: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string   "name"
    t.string   "city"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.string   "address"
    t.string   "opening_hours"
    t.string   "phone"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "mood"
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "website"
    t.text     "comment"
    t.integer  "restaurant_id"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "published",     default: "pending"
  end

  add_index "reviews", ["restaurant_id"], name: "index_reviews_on_restaurant_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",                  default: false, null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "articles", "restaurants"
  add_foreign_key "reviews", "restaurants"
end
