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

ActiveRecord::Schema.define(version: 20180206225433) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campers", force: :cascade do |t|
    t.string "brand"
    t.string "model"
    t.string "version"
    t.string "display_price"
    t.string "price_min"
    t.string "price_max"
    t.string "capacity"
    t.string "link"
    t.string "gvm"
    t.string "ball_weight"
    t.string "solar"
    t.string "roof_rack"
    t.string "alloy_wheels"
    t.string "all_terrain_tyres"
    t.string "mud_tyres"
    t.string "twin_spares"
    t.string "large_water"
    t.string "deep_cycle_batteries"
    t.string "diesel_heating"
    t.string "air_conditioning"
    t.string "tv"
    t.string "ensuite"
    t.string "hot_water"
    t.string "independent_suspension"
    t.string "priority"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "type_a"
    t.string "type_b"
    t.string "type_c"
    t.string "atm"
    t.string "tare"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "role"
    t.string "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer "invitation_limit"
    t.string "invited_by_type"
    t.integer "invited_by_id"
    t.integer "invitations_count", default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["invitation_token"], name: "index_users_on_invitation_token", unique: true
    t.index ["invitations_count"], name: "index_users_on_invitations_count"
    t.index ["invited_by_id"], name: "index_users_on_invited_by_id"
    t.index ["invited_by_type", "invited_by_id"], name: "index_users_on_invited_by_type_and_invited_by_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "vehicle_make"
    t.string "vehicle_model_title"
    t.string "vehicle_model_descritpion"
    t.string "start_year"
    t.string "end_year"
    t.string "with_breaks"
    t.string "ball_mass_max"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
