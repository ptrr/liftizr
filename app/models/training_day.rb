class TrainingDay < ActiveRecord::Base
  attr_accessible :date

  def previous_days(lifter)
    where("date < #{Date.today}")
  end
end
