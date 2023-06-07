class BodyPart < ActiveRecord::Base
    belongs_to :workout_plan
    belongs_to :exercise

    def self.with_exercise(exercise_id)
        where(exercise_id: exercise_id)
    end

    def self.find_exercises_by_body_part_id(body_part_id)
        Exercise.where(body_part_id: body_part_id)
    end
    
end