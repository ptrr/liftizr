class TrainingDay < ActiveRecord::Base
  attr_accessible :date
  belongs_to :lifter
  has_many :exercises

  def previous_days(lifter)
    where("date < #{Date.today}")
  end
end
