class BodyPart < ActiveRecord::Base
    belongs_to :workout_plan
    has_many :exercises

    def exercises
        Exercise.where(body_part_id: id)
     end

    def self.find_exercises_by_body_part_id(body_part_id)
        Exercise.where(body_part_id: body_part_id)
    end
    
end