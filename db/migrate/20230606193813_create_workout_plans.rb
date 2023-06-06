class CreateWorkoutPlans < ActiveRecord::Migration[6.1]
  def change
    create_table :workout_plans do |t|
      t.string :day
      t.integer :user_id
    end
  end
end