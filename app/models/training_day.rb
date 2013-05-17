class TrainingDay < ActiveRecord::Base
  attr_accessible :date
  belongs_to :lifter
  has_many :exercises
  validates_presence_of :lifter

  def self.previous_days(lifter)
    where("date < ? and lifter_id = ?", Date.today, lifter.id)
  end

end
