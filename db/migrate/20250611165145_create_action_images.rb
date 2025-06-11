class CreateActionImages < ActiveRecord::Migration[8.0]
  def change
    create_table :action_images do |t|
      t.references :action, null: false, foreign_key: true
      t.string :image_url

      t.timestamps
    end
  end
end
