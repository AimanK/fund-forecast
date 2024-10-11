class Saving < ApplicationRecord
  belongs_to :budget

  validates :savings_amount, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
