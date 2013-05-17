class TrainingDay < ActiveRecord::Base
  attr_accessible :date
  has_many :exercises

  belongs_to :lifter
  validates_presence_of :lifter

  def self.previous_days(lifter)
    where("date < ? and lifter_id = ?", Date.today, lifter.id)
  end

  def self.upcoming_days(lifter)
    where("date >= ? and lifter_id = ?", Date.today, lifter.id)
  end

end
