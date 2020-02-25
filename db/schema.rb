# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_25_130805) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "availabilities", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "week_day"
    t.index ["user_id"], name: "index_availabilities_on_user_id"
  end

  create_table "meetings", force: :cascade do |t|
    t.date "date"
    t.string "place"
    t.integer "status"
    t.bigint "user_one_id", null: false
    t.bigint "user_two_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_one_id"], name: "index_meetings_on_user_one_id"
    t.index ["user_two_id"], name: "index_meetings_on_user_two_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "content"
    t.integer "rating"
    t.bigint "meeting_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["meeting_id"], name: "index_reviews_on_meeting_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.string "address"
    t.text "description"
    t.date "birth_date"
    t.string "linkedin"
    t.string "company_name"
    t.integer "company_ca"
    t.string "company_sector"
    t.integer "distance"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "availabilities", "users"
  add_foreign_key "meetings", "users", column: "user_one_id"
  add_foreign_key "meetings", "users", column: "user_two_id"
  add_foreign_key "reviews", "meetings"
  add_foreign_key "reviews", "users"
end
