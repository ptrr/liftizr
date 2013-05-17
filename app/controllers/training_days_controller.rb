class TrainingDaysController < ApplicationController
  def index
    @past = TrainingDay.all
  end
end
