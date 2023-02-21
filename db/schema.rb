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

ActiveRecord::Schema[7.0].define(version: 2023_02_21_162533) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "ad_photos", force: :cascade do |t|
    t.bigint "ad_id", null: false
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ad_id"], name: "index_ad_photos_on_ad_id"
  end

  create_table "ads", force: :cascade do |t|
    t.string "title"
    t.decimal "price"
    t.bigint "car_make_id", null: false
    t.bigint "car_model_id", null: false
    t.integer "year"
    t.integer "mileage"
    t.string "vin"
    t.bigint "body_type_id", null: false
    t.bigint "fuel_type_id", null: false
    t.integer "kw"
    t.integer "horsepower"
    t.integer "ccm"
    t.bigint "transmission_type_id", null: false
    t.string "consumption"
    t.string "color"
    t.text "description"
    t.bigint "country_id", null: false
    t.bigint "city_id", null: false
    t.string "address"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone_number"
    t.string "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.bigint "condition_id", null: false
    t.index ["body_type_id"], name: "index_ads_on_body_type_id"
    t.index ["car_make_id"], name: "index_ads_on_car_make_id"
    t.index ["car_model_id"], name: "index_ads_on_car_model_id"
    t.index ["city_id"], name: "index_ads_on_city_id"
    t.index ["condition_id"], name: "index_ads_on_condition_id"
    t.index ["country_id"], name: "index_ads_on_country_id"
    t.index ["fuel_type_id"], name: "index_ads_on_fuel_type_id"
    t.index ["transmission_type_id"], name: "index_ads_on_transmission_type_id"
  end

  create_table "body_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "car_makes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "car_models", force: :cascade do |t|
    t.string "name"
    t.bigint "car_make_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_make_id"], name: "index_car_models_on_car_make_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.bigint "country_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "postcode"
    t.index ["country_id"], name: "index_cities_on_country_id"
  end

  create_table "conditions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fuel_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "makes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "models", force: :cascade do |t|
    t.string "name"
    t.bigint "make_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["make_id"], name: "index_models_on_make_id"
  end

  create_table "transmission_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "ad_photos", "ads"
  add_foreign_key "ads", "body_types"
  add_foreign_key "ads", "car_makes"
  add_foreign_key "ads", "car_models"
  add_foreign_key "ads", "cities"
  add_foreign_key "ads", "conditions"
  add_foreign_key "ads", "countries"
  add_foreign_key "ads", "fuel_types"
  add_foreign_key "ads", "transmission_types"
  add_foreign_key "car_models", "car_makes"
  add_foreign_key "cities", "countries"
  add_foreign_key "models", "makes"
end
