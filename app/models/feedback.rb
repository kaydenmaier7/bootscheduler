class Feedback < ApplicationRecord
  belongs_to :boot

  validates :rating, :comment, presence: true
end
