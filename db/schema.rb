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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130410043846) do

  create_table "measurements", :force => true do |t|
    t.float    "chest",      :null => false
    t.float    "arms",       :null => false
    t.float    "waist",      :null => false
    t.float    "hips",       :null => false
    t.float    "thighs",     :null => false
    t.float    "weight",     :null => false
    t.integer  "track_id",   :null => false
    t.integer  "step_id",    :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "measurements", ["step_id"], :name => "index_measurements_on_step_id"
  add_index "measurements", ["track_id"], :name => "index_measurements_on_track_id"

  create_table "programs", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "steps", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "step_class", :null => false
    t.integer  "day",        :null => false
    t.integer  "position",   :null => false
    t.integer  "program_id", :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "steps", ["program_id"], :name => "index_steps_on_program_id"

  create_table "tracks", :force => true do |t|
    t.integer  "last_step_index"
    t.integer  "program_id",      :null => false
    t.integer  "user_id",         :null => false
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "tracks", ["program_id"], :name => "index_tracks_on_program_id"
  add_index "tracks", ["user_id"], :name => "index_tracks_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "email",      :default => "", :null => false
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.string   "provider",                   :null => false
    t.string   "uid",                        :null => false
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["uid"], :name => "index_users_on_uid", :unique => true

  create_table "workouts", :force => true do |t|
    t.string   "emotion",    :null => false
    t.integer  "sweat",      :null => false
    t.integer  "intensity",  :null => false
    t.text     "notes"
    t.integer  "track_id",   :null => false
    t.integer  "step_id",    :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "workouts", ["step_id"], :name => "index_workouts_on_step_id"
  add_index "workouts", ["track_id"], :name => "index_workouts_on_track_id"

end
