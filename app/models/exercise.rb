class Exercise < ActiveRecord::Base
    has_many :body_parts
    has_many :workout_plans, through: :body_parts

    def self.by_type(exercise_type)
      where(exercise_type: exercise_type)
    end
  
    def self.with_body_part(body_part_id)
      joins(:body_parts).where('body_parts.body_part_id = ?', body_part_id)
    end
  end