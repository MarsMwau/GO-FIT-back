class BodyParts < ActiveRecord::Base
    belongs_to :workout_plan
    belongs_to :exercise
end