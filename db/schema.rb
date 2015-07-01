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

ActiveRecord::Schema.define(version: 20150701174516) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "qualifications", force: :cascade do |t|
    t.string   "uuid"
    t.string   "name"
    t.text     "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "qualifications", ["uuid", "name"], name: "index_qualifications_on_uuid_and_name", using: :btree

  create_table "qualifications_subjects", id: false, force: :cascade do |t|
    t.integer "subject_id"
    t.integer "qualification_id"
  end

  add_index "qualifications_subjects", ["qualification_id"], name: "index_qualifications_subjects_on_qualification_id", using: :btree
  add_index "qualifications_subjects", ["subject_id"], name: "index_qualifications_subjects_on_subject_id", using: :btree

  create_table "subjects", force: :cascade do |t|
    t.string   "uuid"
    t.string   "title"
    t.text     "link"
    t.string   "colour"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "subjects", ["uuid", "title"], name: "index_subjects_on_uuid_and_title", using: :btree

end
