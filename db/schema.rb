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

ActiveRecord::Schema.define(version: 20170225122703) do

  create_table "companies", force: :cascade do |t|
    t.string   "compname",              limit: 255
    t.string   "contactname",           limit: 255
    t.string   "email",                 limit: 255
    t.string   "phone",                 limit: 255
    t.string   "domain",                limit: 255
    t.integer  "years",                 limit: 4
    t.integer  "rating",                limit: 4
    t.integer  "compensation_to_tier1", limit: 4
    t.text     "remark",                limit: 65535
    t.boolean  "established_startup"
    t.string   "iiitb_share",           limit: 255
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "company_reviews", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "year",       limit: 4
    t.text     "feedback",   limit: 65535
    t.integer  "company_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "company_reviews", ["company_id"], name: "index_company_reviews_on_company_id", using: :btree

  create_table "student_feeds", force: :cascade do |t|
    t.string   "rollno",      limit: 255
    t.string   "email",       limit: 255
    t.integer  "year",        limit: 4
    t.text     "feeback",     limit: 65535
    t.string   "companyname", limit: 255
    t.integer  "company_id",  limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "name",        limit: 255
    t.string   "stream",      limit: 255
    t.string   "phone_no",    limit: 255
  end

  add_index "student_feeds", ["company_id"], name: "index_student_feeds_on_company_id", using: :btree

  create_table "student_reviews", force: :cascade do |t|
    t.integer  "company_id",      limit: 4
    t.integer  "student_feed_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "student_reviews", ["student_feed_id"], name: "index_student_reviews_on_student_feed_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.boolean  "admin",                          default: false, null: false
    t.string   "email",              limit: 255,                 null: false
    t.string   "encrypted_password", limit: 128,                 null: false
    t.string   "confirmation_token", limit: 128
    t.string   "remember_token",     limit: 128,                 null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

  add_foreign_key "company_reviews", "companies"
  add_foreign_key "student_feeds", "companies"
  add_foreign_key "student_reviews", "student_feeds"
end
