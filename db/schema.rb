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

ActiveRecord::Schema.define(version: 20160709182105) do

  create_table "orders", force: :cascade do |t|
    t.date     "todays_date"
    t.date     "date_first_available"
    t.string   "phone"
    t.string   "email"
    t.string   "origin_first_name"
    t.string   "origin_last_name"
    t.string   "origin_city"
    t.string   "origin_state"
    t.string   "origin_zip"
    t.string   "origin_cell_phone"
    t.string   "destination_first_name"
    t.string   "destination_last_name"
    t.string   "destination_city"
    t.string   "destination_state"
    t.string   "destination_zip"
    t.string   "destination_cell_phone"
    t.string   "year"
    t.string   "make"
    t.string   "model"
    t.boolean  "is_operable"
    t.text     "description"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "origin_street"
    t.string   "destination_street"
  end

  create_table "quotes", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.date     "pick_up_date"
    t.string   "origin_city"
    t.string   "origin_state"
    t.string   "origin_zip"
    t.string   "destination_city"
    t.string   "destination_state"
    t.string   "destination_zip"
    t.string   "year"
    t.string   "make"
    t.string   "model"
    t.boolean  "is_operable"
    t.text     "description"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "trackings", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "email"
    t.string   "origin_city"
    t.string   "origin_state"
    t.string   "origin_zip"
    t.string   "destination_city"
    t.string   "destination_state"
    t.string   "destination_zip"
    t.string   "year"
    t.string   "make"
    t.string   "model"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.date     "pick_up_date"
  end

end
