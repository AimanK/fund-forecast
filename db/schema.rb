# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_10_11_012513) do
  create_table "budgets", force: :cascade do |t|
    t.date "month"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_budgets_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.decimal "planned"
    t.decimal "spent"
    t.integer "budget_id", null: false
    t.integer "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["budget_id"], name: "index_categories_on_budget_id"
  end

  create_table "debts", force: :cascade do |t|
    t.float "car_payment"
    t.float "student_loan"
    t.float "credit_card"
    t.float "personal_debt"
    t.integer "budget_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["budget_id"], name: "index_debts_on_budget_id"
  end

  create_table "foods", force: :cascade do |t|
    t.float "groceries"
    t.float "restaurants"
    t.integer "budget_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["budget_id"], name: "index_foods_on_budget_id"
  end

  create_table "givings", force: :cascade do |t|
    t.float "charity"
    t.integer "budget_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["budget_id"], name: "index_givings_on_budget_id"
  end

  create_table "healths", force: :cascade do |t|
    t.float "gym"
    t.float "health_products"
    t.float "doctor_visits"
    t.integer "budget_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["budget_id"], name: "index_healths_on_budget_id"
  end

  create_table "housings", force: :cascade do |t|
    t.float "housing_payment"
    t.float "water"
    t.float "natural_gas"
    t.float "electricity"
    t.float "cable"
    t.float "trash"
    t.integer "budget_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["budget_id"], name: "index_housings_on_budget_id"
  end

  create_table "incomes", force: :cascade do |t|
    t.float "paycheck_1"
    t.float "paycheck_2"
    t.integer "budget_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["budget_id"], name: "index_incomes_on_budget_id"
  end

  create_table "insurances", force: :cascade do |t|
    t.float "health_insurance"
    t.float "life_insurance"
    t.float "car_insurance"
    t.float "home_insurance"
    t.float "identity_insurance"
    t.integer "budget_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["budget_id"], name: "index_insurances_on_budget_id"
  end

  create_table "lifestyles", force: :cascade do |t|
    t.float "pet_care"
    t.float "child_care"
    t.float "entertainment"
    t.float "miscellaneous"
    t.integer "budget_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["budget_id"], name: "index_lifestyles_on_budget_id"
  end

  create_table "personals", force: :cascade do |t|
    t.float "clothing"
    t.float "phone"
    t.float "fun_money"
    t.float "hygiene"
    t.float "subscriptions"
    t.integer "budget_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["budget_id"], name: "index_personals_on_budget_id"
  end

  create_table "savings", force: :cascade do |t|
    t.float "savings_amount"
    t.integer "budget_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["budget_id"], name: "index_savings_on_budget_id"
  end

  create_table "transportations", force: :cascade do |t|
    t.float "gasoline"
    t.float "maintenance"
    t.integer "budget_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["budget_id"], name: "index_transportations_on_budget_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "budgets", "users"
  add_foreign_key "categories", "budgets"
  add_foreign_key "debts", "budgets"
  add_foreign_key "foods", "budgets"
  add_foreign_key "givings", "budgets"
  add_foreign_key "healths", "budgets"
  add_foreign_key "housings", "budgets"
  add_foreign_key "incomes", "budgets"
  add_foreign_key "insurances", "budgets"
  add_foreign_key "lifestyles", "budgets"
  add_foreign_key "personals", "budgets"
  add_foreign_key "savings", "budgets"
  add_foreign_key "transportations", "budgets"
end
