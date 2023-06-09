class Exercise < ActiveRecord::Base
  attr_accessor :description
  
    has_many :body_parts
    has_many :workout_plans, through: :body_parts

    def self.by_type(exercise_type)
      where(exercise_type: exercise_type)
    end
  
    def self.find_exercises_by_body_part(body_part_name)
      body_part_id = case body_part_name.downcase
                     when "glutes" then 1
                     when "chest" then 2
                     when "hamstrings" then 3
                     when "calves" then 4
                     when "quads" then 5
                     when "back" then 6
                     when "lats" then 7
                     when "delts" then 8
                     when "abs" then 9
                     end
  
      Exercise.joins(:body_parts).where(body_parts: { body_part_id: body_part_id })
    end

  end