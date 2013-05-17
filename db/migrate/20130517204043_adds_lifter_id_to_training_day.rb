class AddsLifterIdToTrainingDay < ActiveRecord::Migration
  def up
    add_column :training_days, :lifter_id, :integer
  end
end
