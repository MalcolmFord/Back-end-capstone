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

ActiveRecord::Schema.define(version: 20180106173200) do

  create_table "attending_events", force: :cascade do |t|
    t.integer "User_id"
    t.integer "Upcoming_event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Upcoming_event_id"], name: "index_attending_events_on_Upcoming_event_id"
    t.index ["User_id"], name: "index_attending_events_on_User_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "filename"
    t.string "content_type"
    t.binary "file_contents"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messageboards", force: :cascade do |t|
    t.integer "User_id"
    t.integer "Technology_id"
    t.string "post"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Technology_id"], name: "index_messageboards_on_Technology_id"
    t.index ["User_id"], name: "index_messageboards_on_User_id"
  end

  create_table "personal_comments", force: :cascade do |t|
    t.integer "Personal_post_id"
    t.integer "User_id"
    t.text "Comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Personal_post_id"], name: "index_personal_comments_on_Personal_post_id"
    t.index ["User_id"], name: "index_personal_comments_on_User_id"
  end

  create_table "personal_posts", force: :cascade do |t|
    t.integer "User_id"
    t.text "Post"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["User_id"], name: "index_personal_posts_on_User_id"
  end

  create_table "technologies", force: :cascade do |t|
    t.integer "User_id"
    t.string "Name"
    t.text "Description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo_url"
    t.index ["User_id"], name: "index_technologies_on_User_id"
  end

  create_table "technology_post_comments", force: :cascade do |t|
    t.integer "Technology_id"
    t.integer "User_id"
    t.text "Comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Technology_id"], name: "index_technology_post_comments_on_Technology_id"
    t.index ["User_id"], name: "index_technology_post_comments_on_User_id"
  end

  create_table "technology_posts", force: :cascade do |t|
    t.integer "Technology_id"
    t.integer "User_id"
    t.text "Post"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Technology_id"], name: "index_technology_posts_on_Technology_id"
    t.index ["User_id"], name: "index_technology_posts_on_User_id"
  end

  create_table "upcoming_events", force: :cascade do |t|
    t.integer "User_id"
    t.integer "Technology_id"
    t.string "post"
    t.date "date"
    t.string "location"
    t.time "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Technology_id"], name: "index_upcoming_events_on_Technology_id"
    t.index ["User_id"], name: "index_upcoming_events_on_User_id"
  end

  create_table "user_technologies", force: :cascade do |t|
    t.integer "User_id"
    t.integer "Technology_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Technology_id"], name: "index_user_technologies_on_Technology_id"
    t.index ["User_id"], name: "index_user_technologies_on_User_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "First_name"
    t.string "Last_name"
    t.date "DOB"
    t.string "email"
    t.string "password_digest"
    t.string "Profile_photo_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
