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

ActiveRecord::Schema.define(version: 2019_03_16_173921) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bill_menus", force: :cascade do |t|
    t.bigint "menu_id"
    t.bigint "bill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bill_id"], name: "index_bill_menus_on_bill_id"
    t.index ["menu_id"], name: "index_bill_menus_on_menu_id"
  end

  create_table "bills", force: :cascade do |t|
    t.bigint "restaurant_id"
    t.string "name"
    t.text "address"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deliver_at"
    t.index ["restaurant_id"], name: "index_bills_on_restaurant_id"
  end

  create_table "menus", force: :cascade do |t|
    t.bigint "restaurant_id"
    t.string "name"
    t.string "image_url"
    t.decimal "price"
    t.integer "deliver_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restaurant_id"], name: "index_menus_on_restaurant_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.string "kind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "bill_menus", "bills"
  add_foreign_key "bill_menus", "menus"
  add_foreign_key "menus", "restaurants"
end
