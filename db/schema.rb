# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_10_20_205040) do
  create_table "accounts", primary_key: "account_id", force: :cascade do |t|
    t.string "account_name"
    t.string "account_email"
    t.string "password_digest"
    t.integer "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restaurants", primary_key: "rest_id", force: :cascade do |t|
    t.integer "account_id"
    t.string "rest_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_restaurants_on_account_id"
  end

  create_table "users", primary_key: "user_id", force: :cascade do |t|
    t.integer "account_id"
    t.string "name"
    t.string "gender"
    t.date "dob"
    t.string "mobile_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_users_on_account_id"
  end

  add_foreign_key "restaurants", "accounts"
  add_foreign_key "users", "accounts"
end
