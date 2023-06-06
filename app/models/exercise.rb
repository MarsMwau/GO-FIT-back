class Exercise < ActiveRecord::Base
    has_many :body_parts
    has_many :workout_plans, through: :body_parts
  end