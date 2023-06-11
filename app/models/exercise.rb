class Exercise < ActiveRecord::Base
  attr_accessor :description
  belongs_to :body_part
  belongs_to :workout_plan

    def self.by_type(exercise_type)
      where(exercise_type: exercise_type)
    end
  
    def self.find_exercises_by_body_part_id(body_part_id)
      Exercise.where(body_part_id: body_part_id)
    end

  end