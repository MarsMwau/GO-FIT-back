class RemoveExerciseIdFromBodyParts < ActiveRecord::Migration[6.1]
  def change
    remove_column :body_parts, :exercise_id
  end
end
