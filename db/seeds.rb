# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


require 'csv'

filename = Rails.root.join('db/spraypad.csv')

csv_spraypad = File.read(filename)
spray_pads = CSV.parse(csv_spraypad, headers: true, encoding: "utf-8")

spray_pads.each do |sp|
 SprayPad.create(park_name: sp["park_name"], address: sp["address"], complex_id: sp["complex_id"])
  puts sp
end