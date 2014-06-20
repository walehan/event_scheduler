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

ActiveRecord::Schema.define(version: 20140620092419) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "communication_methods", force: true do |t|
    t.string   "communication_method"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "event_locations", force: true do |t|
    t.text     "event_location"
    t.text     "display_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "event_subtypes", force: true do |t|
    t.integer  "event_type_id"
    t.string   "event_subtype"
    t.string   "display_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "event_types", force: true do |t|
    t.string   "event_type"
    t.string   "display_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "request_people", force: true do |t|
    t.integer  "person_id"
    t.integer  "request_id"
    t.integer  "communication_method_id"
    t.integer  "response_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "request_types", force: true do |t|
    t.string   "request_type"
    t.string   "display_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "requests", force: true do |t|
    t.integer  "creator_person_id"
    t.integer  "request_type_id"
    t.integer  "event_type_id"
    t.string   "event_name"
    t.integer  "creator_response_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "response_event_subtypes", force: true do |t|
    t.integer  "response_id"
    t.integer  "event_subtype_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "response_timeslot_locations", force: true do |t|
    t.integer  "response_timeslot_id"
    t.integer  "event_location_id"
    t.integer  "preference"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "response_timeslots", force: true do |t|
    t.integer  "response_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "location_flexibility_rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "responses", force: true do |t|
    t.integer  "person_id"
    t.integer  "request_person_id"
    t.integer  "min_people"
    t.integer  "max_people"
    t.integer  "min_duration"
    t.integer  "max_duration"
    t.integer  "event_subtype_flexibility_rating"
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
