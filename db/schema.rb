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

ActiveRecord::Schema.define(version: 20171012142234) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "api_v1_ones", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "api_v1_rights", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "api_v1_twos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lefts", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "duration"
    t.datetime "start"
    t.datetime "end"
    t.index ["user_id"], name: "index_lefts_on_user_id", using: :btree
  end

  create_table "ones", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "count"
    t.integer  "user_id"
    t.index ["user_id"], name: "index_ones_on_user_id", using: :btree
  end

  create_table "rights", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "duration"
    t.index ["user_id"], name: "index_rights_on_user_id", using: :btree
  end

  create_table "twos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "count"
    t.integer  "user_id"
    t.index ["user_id"], name: "index_twos_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "token"
    t.index ["token"], name: "index_users_on_token", using: :btree
  end

  add_foreign_key "lefts", "users"
  add_foreign_key "ones", "users"
  add_foreign_key "rights", "users"
  add_foreign_key "twos", "users"
end
