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

ActiveRecord::Schema.define(version: 20171118043039) do

  create_table "post_card_translations", force: :cascade do |t|
    t.integer "post_card_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "title"
    t.text "body"
    t.text "description"
    t.index ["locale"], name: "index_post_card_translations_on_locale"
    t.index ["post_card_id"], name: "index_post_card_translations_on_post_card_id"
  end

  create_table "post_cards", force: :cascade do |t|
    t.text "title"
    t.text "keywords"
    t.text "slug"
    t.text "description"
    t.text "image_url"
    t.text "body"
    t.boolean "published", null: false
    t.datetime "sent_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
