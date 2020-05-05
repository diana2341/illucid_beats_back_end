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

ActiveRecord::Schema.define(version: 2020_05_05_221204) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "mixes", force: :cascade do |t|
    t.integer "user_id"
    t.string "mix_name"
    t.float "light_rain_volume"
    t.float "heavy_rain_volume"
    t.float "large_fire_volume"
    t.float "campfire_volume"
    t.float "forest_volume"
    t.float "river_volume"
    t.float "strong_wind_volume"
    t.float "light_wind_volume"
    t.float "thunder_volume"
    t.float "wave_volume"
    t.float "coffee_shop_volume"
    t.float "bird_volume"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
