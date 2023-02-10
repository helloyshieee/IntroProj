# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'csv'
require 'open-uri'
require 'net/http'

filename = Rails.root.join('db/spray_pads.csv')

csv_spraypad = File.read(filename)
spray_pads = CSV.parse(csv_spraypad, headers: true, encoding: "utf-8")

spray_pads.each do |sp|

  spray_pad = SprayPad.create(complex_id: sp["complex_id"],park_name: sp["park_name"],
  address: sp["address"],
  is_open: sp["is_open"])
  puts sp
end



#Park Spaces

url = 'https://data.winnipeg.ca/resource/tx3d-pfxq.json'
uri = URI(url)
response = Net::HTTP.get(uri)
spaces = JSON.parse(response)

spaces.each do |s|
  ParkSpace.find_or_create_by(park_id: s["park_id"], park_name: s["park_name"],
  address: s["address"], location_description: s["location_description"],
  park_category: s["park_category"], linear_park_system: s["linear_park_system"],
  district: s["district:"], neighbourhood: s["neighbourhood"], electoral_ward: s["electoral_ward"], cca: s["cca"],
  area_in_hectares: s["area_in_hectares"],
  water_area_in_hectares: s["water_area_in_hectares"], land_area_in_hectares: s["land_area_in_hectares"])
end



#Asset

url = 'https://data.winnipeg.ca/resource/dk7c-zxyd.json'
uri = URI(url)
response = Net::HTTP.get(uri)
park_a = JSON.parse(response)


park_a.each do |assets_inventory|
  ParkAsset.find_or_create_by(asset_id: assets_inventory["asset_id"], asset_class: assets_inventory["asset_class"],
  park_name: assets_inventory["park_name"], park_id: assets_inventory["park_id"],
  asset_type: assets_inventory["asset_type"], asset_size: assets_inventory["asset_size"],
  primary_field: assets_inventory["primary_field"])
end