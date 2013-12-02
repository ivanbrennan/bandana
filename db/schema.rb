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

ActiveRecord::Schema.define(version: 20131202002258) do

  create_table "band_genres", force: true do |t|
    t.integer "band_id"
    t.integer "genre_id"
  end

  add_index "band_genres", ["band_id"], name: "index_band_genres_on_band_id"
  add_index "band_genres", ["genre_id"], name: "index_band_genres_on_genre_id"

  create_table "band_instruments", force: true do |t|
    t.integer "band_id"
    t.integer "instrument_id"
  end

  add_index "band_instruments", ["band_id"], name: "index_band_instruments_on_band_id"
  add_index "band_instruments", ["instrument_id"], name: "index_band_instruments_on_instrument_id"

  create_table "band_musicians", force: true do |t|
    t.integer "band_id"
    t.integer "musician_id"
  end

  add_index "band_musicians", ["band_id"], name: "index_band_musicians_on_band_id"
  add_index "band_musicians", ["musician_id"], name: "index_band_musicians_on_musician_id"

  create_table "bands", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "city_id"
  end

  add_index "bands", ["city_id"], name: "index_bands_on_city_id"

  create_table "cities", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "demo_genres", force: true do |t|
    t.integer "demo_id"
    t.integer "genre_id"
  end

  add_index "demo_genres", ["demo_id"], name: "index_demo_genres_on_demo_id"
  add_index "demo_genres", ["genre_id"], name: "index_demo_genres_on_genre_id"

  create_table "demos", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "band_id"
  end

  add_index "demos", ["band_id"], name: "index_demos_on_band_id"

  create_table "genres", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "instruments", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "musician_genres", force: true do |t|
    t.integer "musician_id"
    t.integer "genre_id"
  end

  add_index "musician_genres", ["genre_id"], name: "index_musician_genres_on_genre_id"
  add_index "musician_genres", ["musician_id"], name: "index_musician_genres_on_musician_id"

  create_table "musician_instruments", force: true do |t|
    t.integer "musician_id"
    t.integer "instrument_id"
  end

  add_index "musician_instruments", ["instrument_id"], name: "index_musician_instruments_on_instrument_id"
  add_index "musician_instruments", ["musician_id"], name: "index_musician_instruments_on_musician_id"

  create_table "musicians", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

end
