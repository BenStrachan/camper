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

ActiveRecord::Schema.define(version: 20180214075204) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campers", force: :cascade do |t|
    t.string "brand"
    t.string "model"
    t.string "version"
    t.float "display_price"
    t.float "price_min"
    t.float "price_max"
    t.float "capacity"
    t.string "link"
    t.string "gvm"
    t.float "ball_weight"
    t.boolean "solar"
    t.boolean "roof_rack"
    t.boolean "alloy_wheels"
    t.boolean "all_terrain_tyres"
    t.boolean "mud_tyres"
    t.boolean "twin_spares"
    t.boolean "large_water"
    t.boolean "deep_cycle_batteries"
    t.boolean "diesel_heating"
    t.boolean "air_conditioning"
    t.boolean "tv"
    t.boolean "ensuite"
    t.boolean "hot_water"
    t.boolean "independent_suspension"
    t.string "priority"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "type_a"
    t.string "type_b"
    t.string "type_c"
    t.string "atm"
    t.decimal "tare"
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
    t.string "name"
  end

end
