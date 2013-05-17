class TrainingDay < ActiveRecord::Base
  attr_accessible :date
  belongs_to :lifter
  has_many :exercises

  scope :previous_days do |lifter|
    where("date < ? and lifter_id = ?", Date.today, lifter.id)
  end
end
