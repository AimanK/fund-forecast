class Giving < ApplicationRecord
  belongs_to :budget

  validates :charity, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
