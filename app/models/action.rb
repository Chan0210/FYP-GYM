class Action < ApplicationRecord
  belongs_to :body_part
  has_many :action_images, dependent: :destroy
  has_many :action_descriptions, dependent: :destroy
  has_many :cart_items, dependent: :destroy
  has_many :routine_actions, dependent: :destroy
  has_many :workout_actions, dependent: :destroy
end
