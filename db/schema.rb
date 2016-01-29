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

ActiveRecord::Schema.define(version: 20160128212415) do

  create_table "nutritions", force: :cascade do |t|
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.string   "author"
    t.string   "pic_name"
    t.string   "video_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "nutrition_id"
  end

  add_index "posts", ["nutrition_id"], name: "index_posts_on_nutrition_id"

  create_table "users", force: :cascade do |t|
    t.string   "f_name"
    t.string   "l_name"
    t.string   "email"
    t.string   "password_digest"
    t.date     "birthday"
    t.text     "fitness_goals"
    t.text     "lifestyle"
    t.string   "organization"
    t.integer  "week"
    t.integer  "num_wo_submit"
    t.integer  "avail_video"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.boolean  "subscribed"
    t.string   "stripe_id"
  end

  create_table "videos", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
