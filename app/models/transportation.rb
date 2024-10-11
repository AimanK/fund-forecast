class Transportation < ApplicationRecord
  belongs_to :budget

  validates :gasoline, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :maintenance, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
