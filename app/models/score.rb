class Score < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :value, presence: true, numericality: {greater_than_or_equal_to: 0}
end
