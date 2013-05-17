class Sequence < ActiveRecord::Base
  belongs_to :exercise

  validates_numericality_of :weight
  validates_numericality_of :repetitions
end
