class AddTypeToExercise < ActiveRecord::Migration
  def change
    add_column :exercises, :exercise_type, :string
  end
end
