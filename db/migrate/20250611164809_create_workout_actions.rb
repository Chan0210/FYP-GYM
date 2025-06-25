class CreateWorkoutActions < ActiveRecord::Migration[8.0]
  def change
    create_table :workout_actions do |t|
      t.references :workout, null: false, foreign_key: true
      t.references :action, null: false, foreign_key: true
      t.integer :set_completed
      t.integer :reps_at_that_time
      t.integer :sets_at_that_time
      t.timestamps
    end
  end
end
