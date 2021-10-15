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

ActiveRecord::Schema.define(version: 2021_10_15_213448) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "api_v1_blockchains", force: :cascade do |t|
    t.string "header"
    t.string "img_url"
    t.string "catergoryByDate"
    t.string "date"
    t.text "blog_text"
    t.string "twitter_url"
    t.string "mail_url"
    t.string "facebook_url"
    t.string "linkedIn_url"
    t.string "telegram_url"
    t.string "whatsApp_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "api_v1_headlines", force: :cascade do |t|
    t.string "header"
    t.string "img_url"
    t.string "catergoryByDate"
    t.string "date"
    t.text "blog_text"
    t.string "twitter_url"
    t.string "mail_url"
    t.string "facebook_url"
    t.string "linkedIn_url"
    t.string "telegram_url"
    t.string "whatsApp_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "api_v1_learn_cryptos", force: :cascade do |t|
    t.string "title"
    t.string "sub_title"
    t.string "message"
    t.string "steps"
    t.string "download_guide"
    t.string "download_guide_text"
    t.string "blochain_reading"
    t.string "blockchain_text"
    t.string "coming_soon"
    t.string "coming_soon_text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "api_v1_lifestyles", force: :cascade do |t|
    t.string "header"
    t.string "img_url"
    t.string "catergoryByDate"
    t.string "date"
    t.text "blog_text"
    t.string "twitter_url"
    t.string "mail_url"
    t.string "facebook_url"
    t.string "linkedIn_url"
    t.string "telegram_url"
    t.string "whatsApp_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "api_v1_meet_teans", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.string "linkedIn_url"
    t.string "youtube_url"
    t.string "facebook_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "api_v1_recents", force: :cascade do |t|
    t.string "header"
    t.string "img_url"
    t.string "catergoryByDate"
    t.string "date"
    t.text "blog_text"
    t.string "twitter_url"
    t.string "mail_url"
    t.string "facebook_url"
    t.string "linkedIn_url"
    t.string "telegram_url"
    t.string "whatsApp_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "api_v1_writers_feeds", force: :cascade do |t|
    t.string "header"
    t.string "img_url"
    t.string "catergoryByDate"
    t.string "date"
    t.text "blog_text"
    t.string "twitter_url"
    t.string "mail_url"
    t.string "facebook_url"
    t.string "linkedIn_url"
    t.string "telegram_url"
    t.string "whatsApp_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "apicryptos", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
