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

ActiveRecord::Schema.define(version: 2019_08_29_110423) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "achievements", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "badge_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["badge_id"], name: "index_achievements_on_badge_id"
    t.index ["user_id"], name: "index_achievements_on_user_id"
  end

  create_table "badges", force: :cascade do |t|
    t.string "title"
    t.string "icon"
    t.integer "milestone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "challenges", force: :cascade do |t|
    t.string "name"
    t.integer "duration"
    t.date "start_date"
    t.date "end_date"
    t.text "description"
    t.string "image"
    t.string "photo"
    t.integer "reward"
    t.string "address"
    t.integer "coordinates", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_challenges_on_user_id"
  end

  create_table "friendships", force: :cascade do |t|
    t.bigint "sender_id"
    t.bigint "recipient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status", default: "pending"
    t.index ["recipient_id"], name: "index_friendships_on_recipient_id"
    t.index ["sender_id"], name: "index_friendships_on_sender_id"
  end

  create_table "trackers", force: :cascade do |t|
    t.bigint "challenge_id"
    t.bigint "user_id"
    t.boolean "completed", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "time", default: [], array: true
    t.string "pending", default: [], array: true
    t.index ["challenge_id"], name: "index_trackers_on_challenge_id"
    t.index ["user_id"], name: "index_trackers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "score", default: 0, null: false
    t.text "bio"
    t.string "avatar"
    t.string "photo"
    t.string "image"
    t.string "location"
    t.float "latitude"
    t.float "longitude"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "achievements", "badges"
  add_foreign_key "achievements", "users"
  add_foreign_key "challenges", "users"
  add_foreign_key "friendships", "users", column: "recipient_id"
  add_foreign_key "friendships", "users", column: "sender_id"
  add_foreign_key "trackers", "challenges"
  add_foreign_key "trackers", "users"
end
