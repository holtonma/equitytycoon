# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090430025000) do

  create_table "actions", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "asset_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assets", :force => true do |t|
    t.string   "symbol"
    t.string   "name"
    t.integer  "asset_type_id"
    t.integer  "current_price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "portfolio_items", :force => true do |t|
    t.integer  "user_id"
    t.integer  "asset_id"
    t.integer  "qty"
    t.datetime "purchased_date"
    t.integer  "transaction_fee"
    t.integer  "cost_basis"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "porfolio_id"
    t.integer  "portfolio_id"
  end

  create_table "portfolios", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created"
    t.integer  "start_value"
    t.integer  "current_value"
    t.datetime "value_last_updated"
    t.integer  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transactions", :force => true do |t|
    t.integer  "user_id"
    t.integer  "portfolio_id"
    t.integer  "qty"
    t.datetime "date"
    t.integer  "action_id"
    t.integer  "transaction_fee"
    t.integer  "asset_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "email"
    t.integer  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
