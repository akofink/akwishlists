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

ActiveRecord::Schema.define(version: 2020_12_31_165137) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", id: :serial, force: :cascade do |t|
    t.text "body"
    t.integer "user_id"
    t.integer "model_id"
    t.string "model_type"
    t.boolean "edited"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dashboards", id: :serial, force: :cascade do |t|
    t.string "owner_type"
    t.integer "owner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "families", id: :serial, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "owner_id"
  end

  create_table "family_memberships", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.integer "family_id"
  end

  create_table "permission_types", id: :serial, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "permissions", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.integer "permission_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "relationships", id: :serial, force: :cascade do |t|
    t.string "name"
    t.integer "user1_id"
    t.integer "user2_id"
    t.string "user1_label"
    t.string "user2_label"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "up_votes", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.integer "model_id"
    t.string "model_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "email"
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.string "prefix"
    t.string "salt"
    t.boolean "admin"
    t.string "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wish_items", id: :serial, force: :cascade do |t|
    t.integer "wish_list_id"
    t.integer "purchased_by_id"
    t.string "name"
    t.text "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "url"
  end

  create_table "wish_lists", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "title"
    t.integer "family_id"
  end

end
