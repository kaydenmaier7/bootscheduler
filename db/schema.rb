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

ActiveRecord::Schema.define(version: 20161005221148) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.datetime "time"
    t.date     "date"
    t.string   "location"
    t.integer  "mentor_id"
    t.integer  "topic_id"
    t.integer  "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mentor_id"], name: "index_appointments_on_mentor_id", using: :btree
    t.index ["student_id"], name: "index_appointments_on_student_id", using: :btree
    t.index ["topic_id"], name: "index_appointments_on_topic_id", using: :btree
  end

  create_table "boots", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "phone"
    t.string   "role"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "boots_topics", id: false, force: :cascade do |t|
    t.integer "boot_id",  null: false
    t.integer "topic_id", null: false
    t.index ["boot_id"], name: "index_boots_topics_on_boot_id", using: :btree
    t.index ["topic_id"], name: "index_boots_topics_on_topic_id", using: :btree
  end

  create_table "feedbacks", force: :cascade do |t|
    t.integer  "boot_id"
    t.integer  "rating"
    t.text     "comment"
    t.boolean  "ask?"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["boot_id"], name: "index_feedbacks_on_boot_id", using: :btree
  end

  create_table "topics", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "feedbacks", "boots"
end
