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

ActiveRecord::Schema.define(version: 2023_06_06_194348) do

  create_table "body_parts", force: :cascade do |t|
    t.string "body_part_name"
    t.string "workout_kind"
    t.integer "workout_plan_id"
    t.integer "exercise_id"
  end

  create_table "exercises", force: :cascade do |t|
    t.string "exercise_name"
    t.string "exercise_type"
    t.string "exercise_description"
    t.string "exercise_image"
    t.integer "sets"
    t.integer "reps"
    t.integer "weight_kgs"
    t.integer "body_part_id"
    t.integer "workout_plan_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "email"
    t.integer "age"
    t.integer "height"
    t.integer "weight"
  end

  create_table "workout_plans", force: :cascade do |t|
    t.string "day"
    t.integer "user_id"
  end

end
