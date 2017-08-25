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

ActiveRecord::Schema.define(version: 20170825111127) do

  create_table "user_details", force: :cascade do |t|
    t.string "number"
    t.string "gender"
    t.string "name_set"
    t.string "title"
    t.string "given_name"
    t.string "middle_initial"
    t.string "surname"
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.string "state_full"
    t.string "zip_code"
    t.string "country"
    t.string "country_full"
    t.string "email_address"
    t.string "username"
    t.string "password"
    t.string "browser_user_agent"
    t.string "telephone_number"
    t.string "telephone_country_code"
    t.string "mothers_maiden"
    t.string "birthday"
    t.string "age"
    t.string "cc_type"
    t.string "cc_number"
    t.string "cvv2"
    t.string "cc_expires"
    t.string "national_id"
    t.string "ups"
    t.string "western_union_mtcn"
    t.string "money_gram_mtcn"
    t.string "color"
    t.string "occupation"
    t.string "company"
    t.string "vehicle"
    t.string "domain"
    t.string "guid"
    t.string "latitude"
    t.string "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
