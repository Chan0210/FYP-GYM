class CreateRoutineActions < ActiveRecord::Migration[8.0]
  def change
    create_table :routine_actions do |t|
      t.references :routine, null: false, foreign_key: true
      t.references :action, null: false, foreign_key: true

      t.timestamps
    end
  end
end
