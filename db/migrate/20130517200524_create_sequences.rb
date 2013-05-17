class CreateSequences < ActiveRecord::Migration
  def change
    create_table :sequences do |t|
      t.integer :weight
      t.integer :repetitions
      t.integer :exercise_id
      t.integer :lifter_id

      t.timestamps
    end
  end
end
