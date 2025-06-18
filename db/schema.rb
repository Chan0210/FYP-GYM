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

ActiveRecord::Schema[8.0].define(version: 2025_06_11_165235) do
  create_table "action_images", force: :cascade do |t|
    t.integer "action_id", null: false
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["action_id"], name: "index_action_images_on_action_id"
  end

  create_table "actions", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "calories_per_reps"
    t.integer "reps_of_action"
    t.integer "body_part_id", null: false
    t.integer "set_of_action"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["body_part_id"], name: "index_actions_on_body_part_id"
  end

  create_table "body_parts", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cart_items", force: :cascade do |t|
    t.integer "cart_id", null: false
    t.integer "action_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["action_id"], name: "index_cart_items_on_action_id"
    t.index ["cart_id"], name: "index_cart_items_on_cart_id"
  end

  create_table "carts", force: :cascade do |t|
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "routine_actions", force: :cascade do |t|
    t.integer "routine_id", null: false
    t.integer "action_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["action_id"], name: "index_routine_actions_on_action_id"
    t.index ["routine_id"], name: "index_routine_actions_on_routine_id"
  end

  create_table "routines", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_routines_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.boolean "is_admin", default: false
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

  create_table "workout_actions", force: :cascade do |t|
    t.integer "workout_id", null: false
    t.integer "action_id", null: false
    t.integer "set_completed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["action_id"], name: "index_workout_actions_on_action_id"
    t.index ["workout_id"], name: "index_workout_actions_on_workout_id"
  end

  create_table "workouts", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "routine_id", null: false
    t.date "date"
    t.integer "total_duration"
    t.integer "total_calories"
    t.boolean "is_completed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["routine_id"], name: "index_workouts_on_routine_id"
    t.index ["user_id"], name: "index_workouts_on_user_id"
  end

  add_foreign_key "action_images", "actions"
  add_foreign_key "actions", "body_parts"
  add_foreign_key "cart_items", "actions"
  add_foreign_key "cart_items", "carts"
  add_foreign_key "carts", "users"
  add_foreign_key "routine_actions", "actions"
  add_foreign_key "routine_actions", "routines"
  add_foreign_key "routines", "users"
  add_foreign_key "workout_actions", "actions"
  add_foreign_key "workout_actions", "workouts"
  add_foreign_key "workouts", "routines"
  add_foreign_key "workouts", "users"
end
