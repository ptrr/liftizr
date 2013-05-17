class TrainingDaysController < ApplicationController
  def index
    @past = TrainingDay.previous_days(current_lifter)
  end
end
