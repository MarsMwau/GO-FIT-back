class User < ActiveRecord::Base
  has_many :workout_plans

  validates :user_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :age, numericality: { greater_than_or_equal_to: 12 }
  validates :height, numericality: { greater_than_or_equal_to: 0 }
  validates :weight, numericality: { greater_than_or_equal_to: 0 }

  def self.body_parts_with_exercises(user_id)
    user = find(user_id)
    user.workout_plans.includes(body_parts: :exercise).map do |workout_plan|
      {
        workout_plan_id: workout_plan.id,
        day: workout_plan.day,
        body_parts: workout_plan.body_parts.map do |body_part|
          exercise = body_part.exercise
          {
            body_part_id: body_part.id,
            body_part_name: body_part.body_part_name,
            workout_kind: body_part.workout_kind,
            exercise: {
              exercise_id: exercise.id,
              exercise_name: exercise.exercise_name,
              exercise_type: exercise.exercise_type,
              exercise_description: exercise.exercise_description,
              exercise_image: exercise.exercise_image,
              sets: exercise.sets,
              reps: exercise.reps,
              weight_kgs: exercise.weight_kgs,
              body_part_id: exercise.body_part_id,
              workout_plan_id: exercise.workout_plan_id
            }
          }
        end
      }
    end
  end

end