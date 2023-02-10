ActiveRecord::Schema[7.0].define(version: 2023_02_10_162309) do
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

  create_table "spray_pads", id: false, force: :cascade do |t|
    t.string "park_name"
    t.string "address"
    t.string "is_open"
    t.integer "complex_id"
  end

end
