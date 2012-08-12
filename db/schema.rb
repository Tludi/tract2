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

ActiveRecord::Schema.define(:version => 20120726005240) do

  create_table "costbooks", :force => true do |t|
    t.string   "name"
    t.string   "material"
    t.decimal  "material_cost"
    t.decimal  "labor_cost"
    t.string   "division"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "csi_divisions", :force => true do |t|
    t.integer  "main_number"
    t.string   "main_name"
    t.integer  "sub_number"
    t.string   "sub_name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "materials", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.decimal  "crew"
    t.integer  "dialyOutput"
    t.decimal  "laborHours"
    t.string   "unit"
    t.decimal  "beforeCostMaterial"
    t.decimal  "beforeCostLabor"
    t.decimal  "beforeCostEquipment"
    t.decimal  "beforeCostTotal"
    t.decimal  "overheadProfitTotal"
    t.integer  "costbook_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.string   "address1"
    t.string   "address2"
    t.string   "contact"
    t.date     "bidDate"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
