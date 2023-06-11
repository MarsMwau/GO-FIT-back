class WorkoutPlan < ActiveRecord::Base
  belongs_to :user
  has_many :exercises
  has_many :body_parts, through: :exercises

    # Instance methods
  def total_exercises
    exercises.count
  end

  def body_parts_count
    body_parts.count
  end

  def self.by_user(user_id)
    where(user_id: user_id)
  end

  def self.with_exercise(exercise_id)
    joins(:exercises).where('exercises.id = ?', exercise_id)
  end

  # Class methods

  def self.most_common_body_parts(limit = 5)
    select('body_parts.body_part_name, COUNT(*) AS count')
      .joins(:body_parts)
      .group('body_parts.body_part_name')
      .order('count DESC')
      .limit(limit)
  end

end