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

ActiveRecord::Schema.define(version: 2021_08_03_042620) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "jobs", force: :cascade do |t|
    t.string "title", null: false
    t.string "company", null: false
    t.integer "employer_id", null: false
    t.integer "applicant_ids", array: true
    t.text "description", null: false
    t.string "apply_url"
    t.boolean "featured", null: false
    t.string "locations", null: false, array: true
    t.boolean "remote_ok", null: false
    t.string "salary"
    t.string "tenure", null: false
    t.string "specialty", null: false
    t.string "role", null: false
    t.string "tech", array: true
    t.string "industry"
    t.integer "company_size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company"], name: "index_jobs_on_company"
    t.index ["employer_id"], name: "index_jobs_on_employer_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.boolean "employer", null: false
    t.integer "job_ids", default: [], array: true
    t.string "password_digest", null: false
    t.string "session_token", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["session_token"], name: "index_users_on_session_token", unique: true
  end

end
