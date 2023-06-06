class BodyPart < ActiveRecord::Base
    belongs_to :workout_plan
    belongs_to :exercise

    def self.with_exercise(exercise_id)
        where(exercise_id: exercise_id)
    end
    
end