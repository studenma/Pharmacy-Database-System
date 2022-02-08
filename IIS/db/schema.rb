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

ActiveRecord::Schema.define(version: 20171203174402) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "availables", force: :cascade do |t|
    t.integer "branch_id"
    t.integer "drug_id"
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["branch_id", "drug_id"], name: "index_availables_on_branch_id_and_drug_id"
  end

  create_table "branches", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address"
  end

  create_table "contributions", force: :cascade do |t|
    t.integer "insurer_id"
    t.integer "drug_id"
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["insurer_id", "drug_id"], name: "index_contributions_on_insurer_id_and_drug_id"
  end

  create_table "drugs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "price"
    t.boolean "prescription"
    t.integer "bprice"
    t.integer "supplier_id"
    t.index ["supplier_id"], name: "index_drugs_on_supplier_id"
  end

  create_table "insurers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "code"
    t.integer "orgid"
  end

  create_table "order_drugs", force: :cascade do |t|
    t.bigint "order_id"
    t.bigint "drug_id"
    t.integer "amount", default: 1
    t.index ["drug_id"], name: "index_order_drugs_on_drug_id"
    t.index ["order_id", "drug_id"], name: "index_order_drugs_on_order_id_and_drug_id"
    t.index ["order_id"], name: "index_order_drugs_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.date "dateOrdered"
    t.boolean "pending"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "branch_id"
    t.index ["branch_id"], name: "index_orders_on_branch_id"
  end

  create_table "reservation_drugs", force: :cascade do |t|
    t.integer "reservation_id"
    t.integer "drug_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "amount", default: 1
    t.index ["reservation_id", "drug_id"], name: "index_reservation_drugs_on_reservation_id_and_drug_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "customer"
    t.datetime "date"
    t.bigint "branch_id"
    t.index ["branch_id"], name: "index_reservations_on_branch_id"
  end

  create_table "sale_drugs", force: :cascade do |t|
    t.bigint "sale_id"
    t.bigint "drug_id"
    t.integer "amount", default: 1
    t.index ["drug_id"], name: "index_sale_drugs_on_drug_id"
    t.index ["sale_id", "drug_id"], name: "index_sale_drugs_on_sale_id_and_drug_id"
    t.index ["sale_id"], name: "index_sale_drugs_on_sale_id"
  end

  create_table "sales", force: :cascade do |t|
    t.bigint "branch_id"
    t.bigint "insurer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "rc", default: ""
    t.index ["branch_id"], name: "index_sales_on_branch_id"
    t.index ["insurer_id"], name: "index_sales_on_insurer_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "role", default: 1
    t.bigint "branch_id"
    t.index ["branch_id"], name: "index_users_on_branch_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "order_drugs", "drugs"
  add_foreign_key "order_drugs", "orders"
  add_foreign_key "orders", "branches"
  add_foreign_key "reservations", "branches"
  add_foreign_key "sale_drugs", "drugs"
  add_foreign_key "sale_drugs", "sales"
  add_foreign_key "sales", "branches"
  add_foreign_key "sales", "insurers"
  add_foreign_key "users", "branches"
end
