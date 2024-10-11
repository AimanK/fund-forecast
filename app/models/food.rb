class Food < ApplicationRecord
  belongs_to :budget

  validates :groceries, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :restaurants, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
