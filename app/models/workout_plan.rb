class WorkoutPlan < ActiveRecord::Base
    belongs_to :user
    has_many :body_parts
    has_many :exercises, through: :body_parts
end