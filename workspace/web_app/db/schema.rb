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

ActiveRecord::Schema.define(version: 20141126024801) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "category_codes", force: true do |t|
    t.integer  "code"
    t.string   "category"
    t.integer  "categoryType"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "class_jars", force: true do |t|
    t.integer  "total"
    t.integer  "progress"
    t.string   "name"
    t.integer  "type"
    t.integer  "uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "classrooms", force: true do |t|
    t.integer  "grade"
    t.integer  "tid"
    t.integer  "room"
    t.integer  "classlvl"
    t.integer  "classProgress"
    t.integer  "nextLvl"
    t.string   "schoolName"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "earned_points", force: true do |t|
    t.integer  "earnId"
    t.integer  "category_code"
    t.string   "earnTime"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "items", force: true do |t|
    t.integer  "cost"
    t.string   "name"
    t.integer  "storeType"
    t.integer  "uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leagues", force: true do |t|
    t.string   "leagueName"
    t.boolean  "hasStamps"
    t.integer  "leagueAdmin"
    t.string   "leagueCode"
    t.boolean  "private"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "schools", force: true do |t|
    t.string   "schoolName"
    t.string   "zip"
    t.string   "city"
    t.string   "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sold_items", force: true do |t|
    t.integer  "uid"
    t.integer  "iid"
    t.string   "tstamp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student_class_matches", force: true do |t|
    t.integer  "sid"
    t.integer  "cid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student_users", force: true do |t|
    t.integer  "totalcoins"
    t.integer  "currentcoins"
    t.integer  "lvl"
    t.integer  "progress"
    t.integer  "lvlUpAmount"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "teacher_users", force: true do |t|
    t.integer  "coins"
    t.integer  "leagueId"
    t.boolean  "hasStamps"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: true do |t|
    t.string   "fname"
    t.string   "lname"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "usertype",        limit: 8
    t.string   "password_digest", limit: 80
    t.string   "stamp",           limit: 80
    t.string   "email",           limit: 200
    t.boolean  "isActivated"
    t.integer  "user_category_id"
    t.string   "user_category_type"
    t.string   "type"
  end

end
