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

ActiveRecord::Schema.define(version: 2019_02_12_091850) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "burns", force: :cascade do |t|
    t.integer "game_id"
    t.integer "response_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "played"
    t.integer "user_id"
    t.integer "round_id"
  end

  create_table "decks", force: :cascade do |t|
    t.text "name"
    t.boolean "sfw"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.integer "pin"
    t.text "name"
    t.integer "deck_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "instances", force: :cascade do |t|
    t.text "card"
    t.integer "deck_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "sfw"
  end

  create_table "responses", force: :cascade do |t|
    t.text "card"
    t.integer "deck_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "sfw"
  end

  create_table "rounds", force: :cascade do |t|
    t.integer "game_id"
    t.integer "number"
    t.integer "instance_id"
    t.integer "winner_id"
    t.integer "master_id"
    t.integer "winning_card_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text "name"
    t.integer "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
