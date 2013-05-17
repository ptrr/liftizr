class Sequence < ActiveRecord::Base
  attr_accessible :exercise_id, :lifter_id, :repetitions, :weight
  belongs_to :exercise
  belongs_to :lifter

  validates_numericality_of :weight
  validates_numericality_of :repetitions
end
