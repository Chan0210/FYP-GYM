class CreateActions < ActiveRecord::Migration[8.0]
  def change
    create_table :actions do |t|
      t.string :name
      t.string :description
      t.integer :calories_per_reps
      t.integer :reps_of_action
      t.references :body_part, null: false, foreign_key: true
      t.integer :set_of_action

      t.timestamps
    end
  end
end
