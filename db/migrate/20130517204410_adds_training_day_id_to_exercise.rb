class AddsTrainingDayIdToExercise < ActiveRecord::Migration
  def change
    add_column :exercises, :training_day_id, :integer
  end
end
