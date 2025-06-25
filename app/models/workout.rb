class Workout < ApplicationRecord
  belongs_to :user
  belongs_to :routine
  has_many :workout_actions, dependent: :destroy
  before_create :copy_routine_snapshot

  private

  def copy_routine_snapshot
    self.routine_name = routine.name
    self.routine_description = routine.description
  end
end
