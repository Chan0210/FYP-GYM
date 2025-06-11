class BodyPart < ApplicationRecord
  has_many :actions, dependent: :destroy
end
