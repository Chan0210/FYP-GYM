class CreateRoutines < ActiveRecord::Migration[8.0]
  def change
    create_table :routines do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :description
      t.timestamps
    end
  end
end
