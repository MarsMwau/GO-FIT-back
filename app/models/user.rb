class User < ActiveRecord::Base
  has_many :workout_plans

  validates :user_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :age, numericality: { greater_than_or_equal_to: 12 }
  validates :height, numericality: { greater_than_or_equal_to: 0 }
  validates :weight, numericality: { greater_than_or_equal_to: 0 }

  def self.body_parts_with_exercises(user_id)
    user = find(user_id)
    body_parts_with_exercises = []
  
    user.workout_plans.includes(body_parts: :exercises).each do |workout_plan|
      body_parts = workout_plan.body_parts.map do |body_part|
        exercises = body_part.exercises.map do |exercise|
          {
            exercise_id: exercise.id,
            exercise_name: exercise.exercise_name,
            exercise_type: exercise.exercise_type,
            exercise_image: exercise.exercise_image,
            exercise_description: exercise.exercise_description,
            weight_kgs: exercise.weight_kgs,
            sets: exercise.sets,
            reps: exercise.reps
          }
        end
  
        {
          body_part_id: body_part.id,
          body_part_name: body_part.body_part_name,
          body_part_image: body_part.image,
          workout_kind: body_part.workout_kind,
          exercises: exercises
        }
      end
  
      body_parts_with_exercises.concat(body_parts)
    end
  
    body_parts_with_exercises.uniq! { |bp| [bp[:body_part_id], bp[:workout_kind]] }
    body_parts_with_exercises
  end
  
  
  

end
  