class CreateWorkouts < ActiveRecord::Migration[8.0]
  def change
    create_table :workouts do |t|
      t.references :user, null: false, foreign_key: true
      t.references :routine, null: false, foreign_key: true
      t.date :date
      t.integer :total_duration
      t.integer :total_calories
      t.boolean :is_completed

      t.timestamps
    end
  end
end
