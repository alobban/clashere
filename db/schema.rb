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

ActiveRecord::Schema.define(version: 20131110124009) do

  create_table "classified_ads", force: true do |t|
    t.string   "title"
    t.integer  "rent"
    t.string   "location"
    t.text     "description", limit: 255
    t.integer  "bed"
    t.integer  "bath"
    t.date     "end_date"
    t.integer  "user_id",     limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "classified_ads_1", id: false, force: true do |t|
    t.integer  "id",                                  null: false
    t.string   "title"
    t.string   "description"
    t.integer  "bedroom"
    t.decimal  "bathroom"
    t.integer  "user_id"
    t.datetime "post_date"
    t.datetime "end_date"
    t.decimal  "rent",        precision: 8, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
