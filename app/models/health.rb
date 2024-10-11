class Health < ApplicationRecord
  belongs_to :budget

  validates :gym, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :health_products, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :doctor_visits, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
