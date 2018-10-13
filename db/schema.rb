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

ActiveRecord::Schema.define(version: 20181013153900) do

  create_table "issues", force: :cascade do |t|
    t.string   "reporter_type"
    t.integer  "reporter_id"
    t.string   "assignee_type"
    t.integer  "assignee_id"
    t.string   "summary"
    t.string   "status"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["assignee_type", "assignee_id"], name: "index_issues_on_assignee_type_and_assignee_id"
    t.index ["reporter_type", "reporter_id"], name: "index_issues_on_reporter_type_and_reporter_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
