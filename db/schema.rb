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

ActiveRecord::Schema[7.0].define(version: 2023_02_10_164634) do
  create_table "park_assets", id: false, force: :cascade do |t|
    t.integer "asset_id", null: false
    t.string "asset_class"
    t.string "park_name"
    t.integer "park_id"
    t.string "asset_type"
    t.string "asset_size"
    t.string "primary_field"
  end

  create_table "park_spaces", id: false, force: :cascade do |t|
    t.integer "park_id", null: false
    t.string "park_name"
    t.string "address"
    t.string "location_description"
    t.string "park_category"
    t.string "linear_park_system"
    t.string "district"
    t.string "neighbourhood"
    t.string "electoral_ward"
    t.string "cca"
    t.integer "area_in_hectares"
    t.integer "water_area_in_hectares"
    t.integer "land_area_in_hectares"
  end

  create_table "pools", force: :cascade do |t|
    t.string "park_name"
    t.string "address"
    t.string "is_open"
    t.string "entry_height"
    t.string "pool_entry"
    t.string "avg_temp"
    t.string "group_bookings"
    t.string "lockers"
    t.string "slide"
    t.string "diving_board"
    t.string "lap_swim"
    t.string "lessons"
    t.string "spray"
    t.string "showers"
    t.string "parking_lot"
    t.string "booking_info"
    t.string "locker_info"
    t.integer "complex_id"
    t.integer "park_id"
  end

  create_table "spray_p_ads", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spray_pads", force: :cascade do |t|
    t.string "park_name"
    t.string "address"
    t.string "is_open"
    t.integer "complex_id"
    t.integer "park_id"
  end

end
