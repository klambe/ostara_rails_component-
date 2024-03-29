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

ActiveRecord::Schema.define(version: 20170717120713) do

  create_table "events", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "title"
    t.string   "category"
    t.string   "sub_category1"
    t.string   "year"
    t.string   "month"
    t.boolean  "approval"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "media_files", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "filename"
    t.string   "s3_location"
    t.boolean  "approval"
    t.boolean  "flagged"
    t.integer  "Event_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["Event_id"], name: "index_media_files_on_Event_id", using: :btree
  end

  add_foreign_key "media_files", "Events"
end
