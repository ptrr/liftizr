class AddLifterIdForeignKeyToExercise < ActiveRecord::Migration
  def change
    add_column :exercises, :lifter_id, :integer
  end
end
