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

ActiveRecord::Schema.define(:version => 20110521205611) do

  create_table "hotels", :force => true do |t|
    t.string   "name"
    t.string   "address_street"
    t.string   "address_city"
    t.string   "address_post_code"
    t.string   "website"
    t.string   "email"
    t.integer  "distance_to_la_barca"
    t.integer  "double_room_price"
    t.string   "phone_nr"
    t.string   "fax_nr"
    t.string   "extra_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "post_answers", :force => true do |t|
    t.string   "content"
    t.string   "username"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
