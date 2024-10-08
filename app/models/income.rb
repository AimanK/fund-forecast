class Income < ApplicationRecord
  belongs_to :budget

  validates :paycheck_1, :paycheck_2, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
