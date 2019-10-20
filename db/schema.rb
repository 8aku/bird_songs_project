# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_20_020203) do

  create_table "bird_songs", force: :cascade do |t|
    t.string "audio_file"
    t.integer "country_id", null: false
    t.integer "bird_id", null: false
    t.integer "license_id", null: false
    t.integer "provider_id", null: false
    t.integer "type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "locations_id"
    t.integer "location_id"
    t.index ["bird_id"], name: "index_bird_songs_on_bird_id"
    t.index ["country_id"], name: "index_bird_songs_on_country_id"
    t.index ["license_id"], name: "index_bird_songs_on_license_id"
    t.index ["location_id"], name: "index_bird_songs_on_location_id"
    t.index ["locations_id"], name: "index_bird_songs_on_locations_id"
    t.index ["provider_id"], name: "index_bird_songs_on_provider_id"
    t.index ["type_id"], name: "index_bird_songs_on_type_id"
  end

  create_table "birds", force: :cascade do |t|
    t.string "common_name"
    t.string "genus"
    t.string "species"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "country"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "licenses", force: :cascade do |t|
    t.string "license_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "locations", force: :cascade do |t|
    t.decimal "latitude"
    t.decimal "longitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "country_id"
    t.index ["country_id"], name: "index_locations_on_country_id"
  end

  create_table "providers", force: :cascade do |t|
    t.string "provider_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "types", force: :cascade do |t|
    t.string "type_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "bird_songs", "birds"
  add_foreign_key "bird_songs", "countries"
  add_foreign_key "bird_songs", "licenses"
  add_foreign_key "bird_songs", "providers"
  add_foreign_key "bird_songs", "types"
end
