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

ActiveRecord::Schema.define(version: 2019_04_25_183506) do

  create_table "albums", force: :cascade do |t|
    t.string "thumbnail"
    t.string "name"
    t.text "description"
    t.date "release_date"
    t.string "slug"
    t.string "tags"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_albums_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "slug"
    t.string "tags"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["category_id"], name: "index_categories_on_category_id"
    t.index ["user_id"], name: "index_categories_on_user_id"
  end

  create_table "musics", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "letter"
    t.string "slug"
    t.string "tags"
    t.integer "album_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "link_path"
    t.index ["album_id"], name: "index_musics_on_album_id"
    t.index ["user_id"], name: "index_musics_on_user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "thumbnail"
    t.string "title"
    t.text "description"
    t.text "content"
    t.boolean "published"
    t.string "slug"
    t.string "tags"
    t.integer "category_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_posts_on_category_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "tours", force: :cascade do |t|
    t.date "date"
    t.string "location"
    t.string "city"
    t.string "state"
    t.string "buy_ticket_link"
    t.string "buy_vip_ticket_link"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_tours_on_user_id"
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
    t.string "nickname"
    t.boolean "admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
