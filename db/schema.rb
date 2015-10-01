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

ActiveRecord::Schema.define(version: 20151001115644) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "availabilities", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "capacity"
    t.integer  "property_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "availabilities", ["property_id"], name: "index_availabilities_on_property_id", using: :btree

  create_table "bookings", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "property_id"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "capacity"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "bookings", ["property_id"], name: "index_bookings_on_property_id", using: :btree
  add_index "bookings", ["user_id"], name: "index_bookings_on_user_id", using: :btree

  create_table "properties", force: :cascade do |t|
    t.string   "country"
    t.float    "latitude"
    t.float    "longitude"
    t.decimal  "price_night"
    t.string   "beach_name"
    t.integer  "capacity"
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
  end

  add_index "properties", ["user_id"], name: "index_properties_on_user_id", using: :btree

  create_table "searches", force: :cascade do |t|
    t.string   "country"
    t.decimal  "price_night"
    t.integer  "capacity"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "phone_number"
    t.string   "last_name"
    t.string   "city"
    t.integer  "zipcode"
    t.string   "country"
    t.string   "street_name"
    t.integer  "house_number"
    t.string   "user_name"
    t.decimal  "balance"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "availabilities", "properties"
  add_foreign_key "bookings", "properties"
  add_foreign_key "bookings", "users"
end
