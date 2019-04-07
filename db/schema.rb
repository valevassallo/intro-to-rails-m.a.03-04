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

ActiveRecord::Schema.define(version: 2019_04_07_131606) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "airplanes", force: :cascade do |t|
    t.string "airplanemodel"
    t.integer "capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "airports", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "state"
    t.string "country"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flights", force: :cascade do |t|
    t.bigint "airplane_id"
    t.integer "freespots"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["airplane_id"], name: "index_flights_on_airplane_id"
  end

  create_table "programs", force: :cascade do |t|
    t.string "airline"
    t.string "days"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scales", force: :cascade do |t|
    t.bigint "trip_id"
    t.bigint "airport_id"
    t.integer "ordernum"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["airport_id"], name: "index_scales_on_airport_id"
    t.index ["trip_id"], name: "index_scales_on_trip_id"
  end

  create_table "trips", force: :cascade do |t|
    t.bigint "flight_id"
    t.bigint "program_id"
    t.date "date"
    t.bigint "airport_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["airport_id"], name: "index_trips_on_airport_id"
    t.index ["flight_id"], name: "index_trips_on_flight_id"
    t.index ["program_id"], name: "index_trips_on_program_id"
  end

  add_foreign_key "flights", "airplanes"
  add_foreign_key "scales", "airports"
  add_foreign_key "scales", "trips"
  add_foreign_key "trips", "airports"
  add_foreign_key "trips", "flights"
  add_foreign_key "trips", "programs"
end
