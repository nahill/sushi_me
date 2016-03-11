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

ActiveRecord::Schema.define(version: 20160111044100) do

  create_table "restaurants", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "fax"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.boolean  "ayce"
    t.string   "description"
    t.string   "websiteurl"
    t.string   "menuurl"
    t.decimal  "rating"
    t.string   "hour_open"
    t.time     "hour_mon_open"
    t.time     "hour_mon_close"
    t.time     "hour_tue_open"
    t.time     "hour_tue_close"
    t.time     "hour_wed_open"
    t.time     "hour_wed_close"
    t.time     "hour_thu_open"
    t.time     "hour_thu_close"
    t.time     "hour_fri_open"
    t.time     "hour_fri_close"
    t.time     "hour_sat_open"
    t.time     "hour_sat_close"
    t.time     "hour_sun_open"
    t.time     "hour_sun_close"
    t.time     "happy_hour"
    t.string   "happy_hour_day"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
  end

end
