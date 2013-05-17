class Exercise < ActiveRecord::Base
  attr_accessible :name
  has_many :sequences
  belongs_to :training_day

  EXERCISE_TYPES = %w{deadlift squat benchpress inclined_benchpress declined_benchpress over_head_press shoulder_press incline_dumbell_press dumbell_press pull_up chin_up dips peck_fly cable_cross_over }

  validates_presence_of :exercise_type, inclusion: { in: EXERCISE_TYPES }
end
