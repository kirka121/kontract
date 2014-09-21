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

ActiveRecord::Schema.define(version: 20140921152909) do

  create_table "services", force: true do |t|
    t.string  "name"
    t.decimal "price"
  end

  create_table "settings", force: true do |t|
    t.text     "site_name"
    t.text     "site_title"
    t.text     "site_copyright"
    t.string   "admin_email"
    t.string   "booking_email"
    t.integer  "registration_mode"
    t.boolean  "subpages_active"
    t.boolean  "teams_active"
    t.boolean  "services_active"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "carousel_mode"
    t.integer  "carousel_transition"
    t.boolean  "carousel_enabled"
    t.integer  "header_mode"
    t.integer  "header_fade"
    t.boolean  "header_enabled"
    t.integer  "footer_mode"
    t.integer  "footer_fade"
    t.boolean  "footer_enabled"
  end

  create_table "subpages", force: true do |t|
    t.text     "title"
    t.integer  "author"
    t.text     "content"
    t.string   "link_header"
    t.boolean  "active"
    t.integer  "subsection_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subsections", force: true do |t|
    t.string   "title"
    t.boolean  "enabled"
    t.integer  "author"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
