class Feedback < ApplicationRecord
  belongs_to :boot

  validates :rating, :comment, presence: true
  validates :comment, length: {minimum: 10}
end
