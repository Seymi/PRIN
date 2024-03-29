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

ActiveRecord::Schema.define(:version => 20130421121853) do

  create_table "customers", :force => true do |t|
    t.string   "company"
    t.string   "sex"
    t.string   "title"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "street"
    t.string   "street_number"
    t.string   "zip"
    t.string   "city"
    t.string   "country"
    t.string   "tel_fixline"
    t.string   "tel_mobile"
    t.string   "email"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "services", :force => true do |t|
    t.string   "service_name"
    t.decimal  "charge",       :precision => 10, :scale => 0
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
  end

  create_table "test_objects", :force => true do |t|
    t.integer  "customer_id"
    t.string   "desc"
    t.string   "detail_desc"
    t.decimal  "weight",          :precision => 10, :scale => 0
    t.boolean  "punch"
    t.integer  "punch_year"
    t.string   "photo_extension"
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
  end

end
