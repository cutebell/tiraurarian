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

ActiveRecord::Schema.define(version: 2020_04_08_082232) do

  create_table "access_logs", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.datetime "access_datetime"
    t.string "ip_address"
    t.string "url"
    t.string "method"
    t.string "referer"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admins", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "user_id"
    t.integer "permission"
    t.datetime "create_datetime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bads", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "tweet_id"
    t.integer "user_id"
    t.datetime "create_datetime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bookmarks", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "tweet_id"
    t.integer "user_id"
    t.datetime "create_datetime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "card_boxes", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "user_id"
    t.integer "size"
    t.datetime "create_datetime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "card_decks", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "card_box_id"
    t.integer "rule"
    t.integer "card_1"
    t.integer "card_2"
    t.integer "card_3"
    t.datetime "create_datetime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cards", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "card_box_id"
    t.integer "model_id"
    t.integer "element"
    t.integer "power"
    t.datetime "create_datetime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "controls", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "key"
    t.string "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "follows", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "user_id"
    t.integer "target_id"
    t.datetime "create_datetime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "goods", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "tweet_id"
    t.integer "user_id"
    t.datetime "create_datetime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "user_id"
    t.integer "sender_id"
    t.string "sender_name"
    t.string "title"
    t.string "content"
    t.boolean "read_flag"
    t.datetime "create_datetime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mutes", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "user_id"
    t.integer "target_id"
    t.datetime "create_datetime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notices", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "user_id"
    t.integer "sender_id"
    t.string "sender_name"
    t.string "title"
    t.string "content"
    t.boolean "read_flag"
    t.datetime "create_datetime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "points", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "user_id"
    t.integer "point", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stats", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.datetime "datetime"
    t.integer "load"
    t.integer "users"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stocks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "user_id"
    t.integer "number", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "tweet_id"
    t.integer "user_id"
    t.string "tag_string"
    t.datetime "create_datetime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "taxpayer_hofs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "user_id"
    t.integer "tax", default: 0
    t.datetime "datetime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "taxpayers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "user_id"
    t.integer "tax", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "texts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "tweet_id"
    t.integer "user_id"
    t.text "content"
    t.datetime "create_datetime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "thumbs", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "thumb_file_name"
    t.string "thumb_content_type"
    t.bigint "thumb_file_size"
    t.datetime "thumb_updated_at"
  end

  create_table "tweets", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "user_id"
    t.integer "parent_id"
    t.string "content"
    t.datetime "create_datetime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.bigint "image_file_size"
    t.datetime "image_updated_at"
    t.integer "res_count", default: 0
    t.integer "good_count", default: 0
    t.integer "bookmark_count", default: 0
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.bigint "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer "bad_count", default: 0
    t.integer "context", default: 0
    t.boolean "nsfw"
    t.float "humanity", default: 0.0
    t.float "sensitivity", default: 0.0
    t.integer "adult", default: 0
    t.integer "spoof", default: 0
    t.integer "medical", default: 0
    t.integer "violence", default: 0
    t.integer "racy", default: 0
    t.string "content_ja"
    t.string "content_en"
    t.string "content_zh"
    t.string "language"
    t.float "language_confidence", default: 0.0
  end

  create_table "users", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.bigint "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.text "description"
    t.string "login_id", default: "", null: false
    t.string "email", default: "", null: false
    t.datetime "last_tweet"
    t.integer "last_check_res", default: 0
    t.index ["login_id"], name: "index_users_on_login_id", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
