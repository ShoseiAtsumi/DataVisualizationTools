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

ActiveRecord::Schema.define(version: 2021_09_11_133339) do

  create_table "channel_infos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "channel_id", null: false
    t.integer "serial", null: false
    t.string "channel_name"
    t.integer "channel_subscribers"
    t.integer "channel_video_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "channel_video_view_count"
  end

  create_table "channels", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "channel_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", primary_key: "user_id", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "name", null: false
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "video_infos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "video_id", null: false
    t.integer "serial", null: false
    t.string "video_title"
    t.integer "video_view"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "videos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "video_id", null: false
    t.string "video_title"
    t.datetime "video_upload_at"
    t.string "channel_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
