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

ActiveRecord::Schema.define(version: 2020_03_04_094816) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "availabilities", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "week_day"
    t.boolean "breakfast"
    t.boolean "lunch"
    t.boolean "afterwork"
    t.index ["user_id"], name: "index_availabilities_on_user_id"
  end

  create_table "meetings", force: :cascade do |t|
    t.date "date"
    t.string "venue_name"
    t.integer "status"
    t.bigint "user_one_id", null: false
    t.bigint "user_two_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "venue_address"
    t.float "latitude"
    t.float "longitude"
    t.integer "week_day"
    t.string "slot"
    t.float "venue_latitude"
    t.float "venue_longitude"
    t.string "venue_postcode"
    t.string "venue_city"
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
    t.float "latitude"
    t.float "longitude"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "availabilities", "users"
  add_foreign_key "meetings", "users", column: "user_one_id"
  add_foreign_key "meetings", "users", column: "user_two_id"
  add_foreign_key "reviews", "meetings"
  add_foreign_key "reviews", "users"
end
