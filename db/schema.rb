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

ActiveRecord::Schema.define(version: 20140308214549) do

  create_table "applications", force: true do |t|
    t.integer  "user_id"
    t.integer  "property_id"
    t.float    "price_offer"
    t.text     "conditions"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "applications", ["property_id"], name: "index_applications_on_property_id"
  add_index "applications", ["user_id"], name: "index_applications_on_user_id"

  create_table "messages", force: true do |t|
    t.string   "title"
    t.text     "message"
    t.string   "message_type"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "messages", ["user_id"], name: "index_messages_on_user_id"

  create_table "payments", force: true do |t|
    t.integer  "user_id"
    t.integer  "property_id"
    t.float    "amount"
    t.string   "bank_routing_number"
    t.string   "bank_account_number"
    t.string   "account_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "payments", ["property_id"], name: "index_payments_on_property_id"
  add_index "payments", ["user_id"], name: "index_payments_on_user_id"

  create_table "properties", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "beds"
    t.float    "baths"
    t.integer  "square_feet"
    t.float    "price"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.boolean  "has_laundry"
    t.boolean  "has_parking"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.boolean  "is_available"
    t.date     "date_available"
  end

  create_table "recipients", force: true do |t|
    t.integer  "user_id"
    t.integer  "message_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "recipients", ["user_id"], name: "index_recipients_on_user_id"

  create_table "tenant_ofs", force: true do |t|
    t.integer  "User_id"
    t.integer  "Property_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_active"
  end

  add_index "tenant_ofs", ["Property_id"], name: "index_tenant_ofs_on_Property_id"
  add_index "tenant_ofs", ["User_id"], name: "index_tenant_ofs_on_User_id"

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password_digest"
    t.string   "email"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "picture_url"
    t.string   "user_type"
    t.string   "phone_number"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
