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

ActiveRecord::Schema.define(version: 2022_11_21_232529) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bikes", force: :cascade do |t|
    t.string "title"
    t.string "brand"
    t.string "model"
    t.integer "year"
    t.integer "category"
    t.integer "sub_category"
    t.string "spokes_id"
    t.string "travel"
    t.float "msrp"
    t.float "weight"
    t.string "handlebars"
    t.string "shifters"
    t.string "brake_levers"
    t.string "brake_calipers"
    t.string "stem"
    t.string "headset"
    t.string "fork"
    t.string "seatpost"
    t.string "saddle"
    t.string "front_derailleur"
    t.string "crank"
    t.string "bottom_bracket"
    t.string "rear_derailleur"
    t.string "shock"
    t.string "cassette"
    t.string "front_rim"
    t.string "rear_rim"
    t.string "front_hub"
    t.string "rear_hub"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_bikes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role", default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "bikes", "users"
end
