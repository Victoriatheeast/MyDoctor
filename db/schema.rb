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

ActiveRecord::Schema.define(version: 0) do

  create_table "appointments", force: :cascade do |t|
    t.integer  "time_slot_id"
    t.integer  "user_id"
    t.datetime "updated_at"
    t.text     "review"
    t.         "is_reviewed"
    t.         "is_completed"
    t.index ["time_slot_id"], name: "index_appointments_on_time_slot_id"
    t.index ["user_id"], name: "index_appointments_on_user_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.integer "specialty_id"
    t.integer "practice_id"
    t.text    "professional_statement"
    t.string  "profile_img_url"
    t.index ["practice_id"], name: "index_doctors_on_practice_id"
    t.index ["specialty_id"], name: "index_doctors_on_specialty_id"
  end

  create_table "practices", force: :cascade do |t|
    t.string "name"
    t.string "location"
  end

  create_table "specialties", force: :cascade do |t|
    t.string "name"
  end

  create_table "time_slots", force: :cascade do |t|
    t.integer  "doctor_id"
    t.string   "date"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "duration"
    t.         "is_filled"
    t.index ["doctor_id"], name: "index_time_slots_on_doctor_id"
  end

  create_table "users", force: :cascade do |t|
    t.string  "name"
    t.string  "email_address"
    t.string  "password_digest"
    t.        "admin"
    t.integer "points"
  end

end