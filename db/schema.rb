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

ActiveRecord::Schema.define(version: 20170320051021) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree
  end

  create_table "activities", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.boolean  "enabled"
    t.integer  "capacity"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "photo"
    t.integer  "subsidiary_id"
    t.index ["subsidiary_id"], name: "index_activities_on_subsidiary_id", using: :btree
  end

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "reservations", force: :cascade do |t|
    t.datetime "init_date"
    t.datetime "end_date"
    t.integer  "cost"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "ubication_id"
    t.integer  "activity_id"
    t.index ["activity_id"], name: "index_reservations_on_activity_id", using: :btree
    t.index ["ubication_id"], name: "index_reservations_on_ubication_id", using: :btree
    t.index ["user_id"], name: "index_reservations_on_user_id", using: :btree
  end

  create_table "subsidiaries", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "photo"
  end

  create_table "ubications", force: :cascade do |t|
    t.string   "name"
    t.integer  "capacity"
    t.integer  "subsidiary_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["subsidiary_id"], name: "index_ubications_on_subsidiary_id", using: :btree
  end

  create_table "user_activities", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "activity_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["activity_id"], name: "index_user_activities_on_activity_id", using: :btree
    t.index ["user_id"], name: "index_user_activities_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "role",                   default: 0
    t.string   "name"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "activities", "subsidiaries"
  add_foreign_key "reservations", "activities"
  add_foreign_key "reservations", "ubications"
  add_foreign_key "reservations", "users"
  add_foreign_key "ubications", "subsidiaries"
  add_foreign_key "user_activities", "activities"
  add_foreign_key "user_activities", "users"
end
