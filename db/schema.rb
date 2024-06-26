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

ActiveRecord::Schema[7.0].define(version: 2024_06_21_045603) do
  create_table "introductions", charset: "utf8", force: :cascade do |t|
    t.date "birth_day", null: false
    t.string "blood_type", null: false
    t.integer "body_height", null: false
    t.integer "body_weight", null: false
    t.string "favorite_food", null: false
    t.string "dislike_food", null: false
    t.string "favorite_color", null: false
    t.string "favorite_place", null: false
    t.bigint "torisetsu_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["torisetsu_id"], name: "index_introductions_on_torisetsu_id"
  end

  create_table "lives", charset: "utf8", force: :cascade do |t|
    t.string "life_morning", null: false
    t.string "life_breakfast", null: false
    t.string "life_breakfast_weight", null: false
    t.string "life_cry", null: false
    t.string "life_crytime", null: false
    t.string "life_anger", null: false
    t.string "life_battle", null: false
    t.string "life_sleep", null: false
    t.bigint "torisetsu_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["torisetsu_id"], name: "index_lives_on_torisetsu_id"
  end

  create_table "torisetsus", charset: "utf8", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_torisetsus_on_user_id"
  end

  create_table "users", charset: "utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "nickname", null: false
    t.string "family_name", null: false
    t.string "first_name", null: false
    t.string "family_name_kana", null: false
    t.string "first_name_kana", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "introductions", "torisetsus"
  add_foreign_key "lives", "torisetsus"
  add_foreign_key "torisetsus", "users"
end
