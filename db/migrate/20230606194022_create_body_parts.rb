class CreateBodyParts < ActiveRecord::Migration[6.1]
  def change
    create_table "body_parts", force: :cascade do |t|
      t.string "body_part_name"
      t.string "workout_kind"
      t.integer "workout_plan_id"
      t.integer "exercise_id"
    end
  end
end
