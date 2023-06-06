class CreateExercises < ActiveRecord::Migration[6.1]
  def change
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
  end
end
