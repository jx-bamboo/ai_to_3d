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

ActiveRecord::Schema[7.1].define(version: 2024_03_24_073029) do
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

  create_table "drafts", force: :cascade do |t|
    t.text "prompt"
    t.string "image"
    t.string "model"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["image"], name: "index_drafts_on_image"
    t.index ["model"], name: "index_drafts_on_model"
    t.index ["prompt"], name: "index_drafts_on_prompt"
    t.index ["user_id"], name: "index_drafts_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "three_dimension_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["three_dimension_id"], name: "index_likes_on_three_dimension_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.decimal "amount"
    t.string "method"
    t.integer "status"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "three_dimensions", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "thumbnail"
    t.string "schematic"
    t.string "litematic"
    t.string "nbt"
    t.string "glb"
    t.string "obj"
    t.string "stl"
    t.string "fbx"
    t.string "usd"
    t.integer "draft_mark"
    t.integer "status", default: 0, null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["description"], name: "index_three_dimensions_on_description"
    t.index ["litematic"], name: "index_three_dimensions_on_litematic"
    t.index ["nbt"], name: "index_three_dimensions_on_nbt"
    t.index ["schematic"], name: "index_three_dimensions_on_schematic"
    t.index ["thumbnail"], name: "index_three_dimensions_on_thumbnail"
    t.index ["title"], name: "index_three_dimensions_on_title"
    t.index ["user_id"], name: "index_three_dimensions_on_user_id"
  end

  create_table "token_changes", force: :cascade do |t|
    t.decimal "amount"
    t.string "event"
    t.integer "user_id", null: false
    t.integer "token_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["token_id"], name: "index_token_changes_on_token_id"
    t.index ["user_id"], name: "index_token_changes_on_user_id"
  end

  create_table "tokens", force: :cascade do |t|
    t.decimal "balance"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_tokens_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "phone_area"
    t.string "phone_number"
    t.string "avatar"
    t.string "nickname"
    t.text "introduce"
    t.integer "role", default: 0, null: false
    t.string "metamask_address"
    t.string "metamask_nonce"
    t.string "phantom_address"
    t.string "phantom_nonce"
    t.string "okx_address"
    t.string "okx_nonce"
    t.string "coinbase_address"
    t.string "coinbase_nonce"
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
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coinbase_address"], name: "index_users_on_coinbase_address", unique: true
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["metamask_address"], name: "index_users_on_metamask_address", unique: true
    t.index ["okx_address"], name: "index_users_on_okx_address", unique: true
    t.index ["phantom_address"], name: "index_users_on_phantom_address", unique: true
    t.index ["phone_number"], name: "index_users_on_phone_number", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "drafts", "users"
  add_foreign_key "likes", "three_dimensions"
  add_foreign_key "likes", "users"
  add_foreign_key "orders", "users"
  add_foreign_key "three_dimensions", "users"
  add_foreign_key "token_changes", "tokens"
  add_foreign_key "token_changes", "users"
  add_foreign_key "tokens", "users"
end
