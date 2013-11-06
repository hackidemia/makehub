# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20131106155012) do

  create_table "materials", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.string   "photo_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "materials_projects", force: true do |t|
    t.integer "material_id", null: false
    t.integer "project_id",  null: false
  end

  add_index "materials_projects", ["material_id", "project_id"], name: "index_materials_projects_on_material_id_and_project_id", unique: true
  add_index "materials_projects", ["project_id", "material_id"], name: "index_materials_projects_on_project_id_and_material_id", unique: true

  create_table "media_objects", force: true do |t|
    t.string   "url"
    t.integer  "step_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.text     "snippet"
    t.string   "image_url"
  end

  create_table "projects", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "parent_id"
  end

  create_table "steps", force: true do |t|
    t.string   "name"
    t.text     "content"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["provider", "uid"], name: "index_users_on_provider_and_uid", unique: true

end
