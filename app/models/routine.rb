class Routine < ApplicationRecord
  belongs_to :user
  has_many :routine_actions, dependent: :destroy
end
