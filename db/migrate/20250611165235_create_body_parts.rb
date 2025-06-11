class CreateBodyParts < ActiveRecord::Migration[8.0]
  def change
    create_table :body_parts do |t|
      t.string :name
      t.string :image_url

      t.timestamps
    end
  end
end
