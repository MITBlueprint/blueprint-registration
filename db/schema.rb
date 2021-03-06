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

ActiveRecord::Schema.define(version: 20150218062729) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "hackers", force: true do |t|
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
    t.boolean  "mentor",                 default: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "school"
    t.integer  "year"
    t.hstore   "emergency_info"
    t.integer  "availability",           default: [],                 array: true
    t.string   "shirt_size"
    t.text     "dietary_restrictions"
    t.string   "interests",              default: [],                 array: true
    t.integer  "status",                 default: 0,     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "team_code"
    t.text     "experience"
    t.text     "desire"
    t.string   "gender"
    t.boolean  "attending"
    t.integer  "laptop_type"
    t.integer  "phone_type"
    t.integer  "first_choice"
    t.integer  "second_choice"
    t.integer  "third_choice"
    t.integer  "experience_level"
    t.boolean  "have_forms"
    t.boolean  "attending_day1"
    t.integer  "orientation"
    t.boolean  "judging",                default: false
    t.string   "track_name"
    t.string   "mentor_group"
    t.string   "mentor_name"
    t.string   "mentor_email"
  end

  add_index "hackers", ["email"], name: "index_hackers_on_email", unique: true, using: :btree
  add_index "hackers", ["reset_password_token"], name: "index_hackers_on_reset_password_token", unique: true, using: :btree

end
